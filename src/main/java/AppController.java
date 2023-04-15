import dao.JdbcRegionDao;
import dao.JdbcResortDao;
import model.Region;
import model.Resort;
import model.User;
import org.apache.commons.dbcp2.BasicDataSource;

import javax.sql.DataSource;
import javax.xml.crypto.Data;
import java.util.List;
import java.util.Scanner;

public class AppController {

    private JdbcRegionDao jdbcRegionDao;
    private JdbcResortDao jdbcResortDao;
    private View view;
    private User user;

    public AppController(DataSource dataSource, User user, View view) {
        jdbcRegionDao = new JdbcRegionDao(dataSource);
        jdbcResortDao = new JdbcResortDao(dataSource);
        this.view = view;
        this.user = user;
    }

    public void addOrChange() {
        Resort resort = selectResort();
        if (resort == null) return;

        System.out.println("How many days will you spend at " + resort.getResortName() + "?");
        int numOfDays = view.promptForInteger();

        user.addOrUpdateResortPlans(resort, numOfDays);
    }

    public Resort selectResort() {
        Scanner userInput = new Scanner(System.in);

        System.out.println();
        List<Region> regions = jdbcRegionDao.getAllRegions();
        System.out.println("Select resort region:");
        for (int i = 1; i <= regions.size() + 1; i++) {
            if (i == regions.size() + 1) {
                System.out.println(i + ". Cancel and return to previous menu.");
            } else {
                System.out.println(i + ". " + regions.get(i - 1).getRegionName());
            }
        }

        int selection = view.promptForInteger(regions.size());

        if (selection == regions.size() + 1) {
            Resort resort = null;
            return resort;
        }

        Region selectedRegion = regions.get(selection - 1);

        System.out.println();
        System.out.println("Select resort:");

        int count = 1;

        List<Resort> resortsInRegion = jdbcResortDao.getResortsByRegionId(selectedRegion.getRegionId());
        for (Resort resort: resortsInRegion) {

            System.out.println(count + ". " + resort.getResortName());
            count++;
        }
        System.out.println(count + ". Cancel and return to previous menu.");

        selection = view.promptForInteger(count);

        if (selection == count) {
            Resort resort = null;
            return resort;
        }

        Resort selectedResort = resortsInRegion.get(selection - 1);

        return selectedResort;
    }

    public void deleteResort() {

        List<Resort> planResortList = view.displayResortPlans();
        System.out.println(planResortList.size()+1 + ". Cancel and return to previous menu");
        System.out.print("Which plans would you like to delete? ");

        int selection = view.promptForInteger(planResortList.size() + 1);

        if (selection == planResortList.size() + 1) {
            System.out.println("No deletion has occurred.");
            return;
        }

        Resort resortToDelete = planResortList.get(selection - 1);
        System.out.println("Deleting " + resortToDelete.getResortName() + " from travel plans.");
        user.deleteResortPlans(resortToDelete);
    }
}
