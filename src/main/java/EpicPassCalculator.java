import dao.JdbcRegionDao;
import dao.JdbcResortDao;
import model.Region;
import model.Resort;
import model.User;
import org.apache.commons.dbcp2.BasicDataSource;

import java.util.List;
import java.util.Scanner;

public class EpicPassCalculator {

    private BasicDataSource dataSource;
    private JdbcRegionDao jdbcRegionDao;
    private JdbcResortDao jdbcResortDao;
    private User user;
    private View view;

    public EpicPassCalculator() {

        dataSource = new BasicDataSource();
        dataSource.setUrl("jdbc:postgresql://localhost:5432/EpicPassDB");
        dataSource.setUsername("postgres");
        dataSource.setPassword("postgres1");
        jdbcRegionDao = new JdbcRegionDao(dataSource);
        jdbcResortDao = new JdbcResortDao(dataSource);

        user = new User("Steve");
        view = new View();
    }

    public void run() {

        view.greet();

        while (true) {

            //generate user interface
            int selection = view.mainMenu();
            switch (selection) {
                case 1:
                    resortSelectionInterface();
                    break;
                case 2:
                    user.displayResortPlans();
                    break;
                case 3:
                    break;
                case 4:
                    System.exit(0);
//                    break;
//                default:
//                    selection = mainUserInterface();
            }
        }
    }


    private void resortSelectionInterface() {
        while (true) {

            int selection = view.resortPlanningMenu();

            switch (selection) {
                case 1:
                    addOrChange();
                    break;
                case 2:
                    deleteResort();
                    break;
                case 3:
                    user.displayResortPlans();
                    break;
                case 4:
                    return;
            }
        }
    }

    private void addOrChange() {
        Resort resort = selectResort();
        if (resort == null) return;

        System.out.println("How many days will you spend at " + resort.getResortName() + "?");
        int numOfDays = view.promptForInteger();

        user.addOrUpdateResortPlans(resort, numOfDays);
    }

    private void deleteResort() {

        List<Resort> planResortList = user.displayResortPlans();
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

}
/*
Class for:
User preferences
    Days at each resort, weekends/weekdays, holidays?
Resorts
Pass Product - class that instatiates specific products
    Includes name, access to resorts, holiday access, cost

1. build out interace
2. build out resorts class
3. build out user preferences
4. build out pass product excel/csv with dummy data


    (data)
 */