import dao.JdbcResortDao;
import model.Resort;
import model.User;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

public class View {

    Scanner userInput;
    User user;
    JdbcResortDao jdbcResortDao;

    public View(User user, DataSource dataSource) {

        userInput = new Scanner(System.in);
        this.user = user;
        this.jdbcResortDao = new JdbcResortDao(dataSource);
    }

    /**
     * UI Display Methods
     */
    public void greet() {
        System.out.println("Welcome to the Epic Pass purchase calculator!");
        System.out.println("_____________________________________________");
        System.out.println();
    }

    public int mainMenu() {
        System.out.println();
        System.out.println("Please select one of the following options:");
        System.out.println("1. Select resorts and days");
        System.out.println("2. Display current resort selection");
        System.out.println("3. Calculate pass options");
        System.out.println("4. Quit");
        System.out.print("Your selection: ");
        return promptForInteger(4);
    }

    public int resortPlanningMenu() {
        System.out.println();
        System.out.println("Please select one of the following options:");
        System.out.println("1. Add or change resorts and days");
        System.out.println("2. Delete resort from plans");
        System.out.println("3. Display current resort selection");
        System.out.println("4. Return to main menu");
        System.out.print("Your selection: ");
        return promptForInteger(4);
    }

    /**
     *    Prompt for input methods
     **/

    public int promptForInteger() {
        return promptForInteger(Integer.MAX_VALUE);
    }

    public int promptForInteger(int max) {

        while(true) {
            try {
                int selection = Integer.parseInt(userInput.nextLine());
                if (selection > 0 && selection <= max) return selection;
            } catch (Exception e) {

            }
            System.out.println("That was not a valid option. Please enter an integer from " + 1 + " to " + max + ".");
        }
    }

    public List<Resort> displayResortPlans() {
        List<Resort> planList = new ArrayList<>();

        System.out.println();
        System.out.println("You have selected:");

        int count = 1;
        for (Map.Entry<Integer, Integer> entry : user.getResortPlans().entrySet()) {
            Integer currentResortId = entry.getKey();
            Resort currentResort = jdbcResortDao.getResort(currentResortId);
            System.out.println(count + ". " + entry.getValue() + " day(s) at " + currentResort.getResortName());
            planList.add(currentResort);
            count++;
        }
        return planList;
    }
}
