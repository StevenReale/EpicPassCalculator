public class View {

    /*
    UI Display Methods
     */
    public static void greet() {
        System.out.println("Welcome to the Epic Pass purchase calculator!");
        System.out.println("_____________________________________________");
        System.out.println();
    }

    public static void mainMenu() {
        System.out.println();
        System.out.println("Please select one of the following options:");
        System.out.println("1. Select resorts and days");
        System.out.println("2. Display current resort selection");
        System.out.println("3. Calculate pass options");
        System.out.println("4. Quit");
        System.out.print("Your selection: ");
    }

    public static void resortPlanningMenu() {
        System.out.println();
        System.out.println("Please select one of the following options:");
        System.out.println("1. Add or change resorts and days");
        System.out.println("2. Delete resort from plans");
        System.out.println("3. Display current resort selection");
        System.out.println("4. Return to main menu");
        System.out.print("Your selection: ");
    }
}
