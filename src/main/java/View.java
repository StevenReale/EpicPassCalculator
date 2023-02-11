import java.util.Scanner;

public class View {

    Scanner userInput;

    public View() {
        userInput = new Scanner(System.in);
    }

    /*
    Prompt for input methods
     */

    public int promptForInteger() {
        return promptForInteger(Integer.MAX_VALUE);
    }
    public int promptForInteger(int max) {

        while(true) {
            try {
                int selection = userInput.nextInt();
                if (selection > 0 && selection <= max) return selection;
            } catch (Exception e) {

            }
            System.out.println("That was not a valid option. Please enter an integer from " + 1 + " to " + max + ".");
        }
    }

    /*
    UI Display Methods
     */
    public void greet() {
        System.out.println("Welcome to the Epic Pass purchase calculator!");
        System.out.println("_____________________________________________");
        System.out.println();
    }

    public void mainMenu() {
        System.out.println();
        System.out.println("Please select one of the following options:");
        System.out.println("1. Select resorts and days");
        System.out.println("2. Display current resort selection");
        System.out.println("3. Calculate pass options");
        System.out.println("4. Quit");
        System.out.print("Your selection: ");
    }

    public void resortPlanningMenu() {
        System.out.println();
        System.out.println("Please select one of the following options:");
        System.out.println("1. Add or change resorts and days");
        System.out.println("2. Delete resort from plans");
        System.out.println("3. Display current resort selection");
        System.out.println("4. Return to main menu");
        System.out.print("Your selection: ");
    }
}
