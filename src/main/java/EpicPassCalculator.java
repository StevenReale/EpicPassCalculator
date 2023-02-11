import model.Region;
import model.Resort;
import model.User;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

public class EpicPassCalculator {

    private List<Resort> resortList;
    private List<Region> regionList;
    private User user;

    public EpicPassCalculator() {

        resortList = new ArrayList<>();
        regionList = new ArrayList<>();
        parseResortList();

        user = new User("Steve");
    }

    public void run() {

        greet();

        while(true) {

            //generate user interface
            int selection = mainUserInterface();
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

    private int mainUserInterface() {
        Scanner userInput = new Scanner(System.in);

        while (true) {

            mainMenu();

            try {
                int selection = userInput.nextInt();
                if (selection > 0 && selection <= 4) return selection;
            } catch (Exception e) {

            }
            System.out.println("That was not a valid option. Please try again");
        }

    }

    private void resortSelectionInterface() {
        Scanner userInput = new Scanner(System.in);
        int selection;
        while (true) {
            while (true) {

                resortPlanningMenu();
                try {
                    selection = userInput.nextInt();
                    if (selection > 0 && selection < 5) break;
                } catch (Exception e) {

                }
                System.out.println("That was not a valid option. Please try again");
            }

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
        Scanner userInput = new Scanner(System.in);

        int numOfDays = 0;

        Resort resort = Resort.selectResort(regionList, resortList);
        if (resort == null) return;

        while (true) {
            System.out.println("How many days will you spend at " + resort.getResortName() + "?");

            try {
                numOfDays = userInput.nextInt();
                break;
            } catch (Exception e) {

            }
            System.out.println("That was not a valid option. Please try again");
        }

        user.addOrUpdateResortPlans(resort, numOfDays);

    }

    private void deleteResort() {
        user.displayResortPlans();
        List<Region> planRegionList = new ArrayList<>();
        List<Resort> planResortList = new ArrayList<>();
        for (Map.Entry<Resort, Integer> plan : user.getResortPlans().entrySet()) {
            if (planRegionList.contains(plan.getKey().getRegion())) {
                planResortList.add(plan.getKey());
            } else {
                planRegionList.add(plan.getKey().getRegion());
                planResortList.add(plan.getKey());
            }
        }
        Resort resort = Resort.selectResort(planRegionList, planResortList);
        if (resort == null) {
            System.out.println("No deletion has occurred.");
            return;
        }

        System.out.println("Deleting " + resort.getResortName() + " from travel plans.");
        user.deleteResortPlans(resort);
    }

   private void parseResortList() {
        File resortFile = new File("src/main/resources/resort-list.data");
        try (Scanner fileReader = new Scanner(resortFile)) {
            Region region = null;
            while (fileReader.hasNextLine()) {
                String currentLine = fileReader.nextLine();

                if (currentLine.charAt(0)=='*') {
                    String regionName = currentLine.substring(1, currentLine.length() - 1);
                    region = new Region(regionName);
                    regionList.add(region);
                } else {
                    String resortName = currentLine;
                    Resort newResort = new Resort(resortName, region);
                    region.addResortToRegion(newResort);
                    resortList.add(newResort);
                }

            }

        } catch (FileNotFoundException e) {
            System.err.println("Could not find file " + resortFile.getAbsolutePath());
            System.err.println("Exiting program");
            System.exit(1);
        }

    }

    private void greet() {
        System.out.println("Welcome to the Epic Pass purchase calculator!");
        System.out.println("_____________________________________________");
        System.out.println();
    }

    private void mainMenu() {
        System.out.println();
        System.out.println("Please select one of the following options:");
        System.out.println("1. Select resorts and days");
        System.out.println("2. Display current resort selection");
        System.out.println("3. Calculate pass options");
        System.out.println("4. Quit");
        System.out.print("Your selection: ");
    }

    private void resortPlanningMenu() {
        System.out.println();
        System.out.println("Please select one of the following options:");
        System.out.println("1. Add or change resorts and days");
        System.out.println("2. Delete resort from plans");
        System.out.println("3. Display current resort selection");
        System.out.println("4. Return to main menu");
        System.out.print("Your selection: ");
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