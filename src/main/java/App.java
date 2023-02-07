import model.Region;
import model.Resort;
import model.User;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

public class App {

    public static List<Resort> resortList;
    public static List<Region> regionList;
    public static User user;

    public static void main(String[] args) {
        //initialize
        resortList = new ArrayList<>();
        regionList = new ArrayList<>();
        parseResortList();

        user = new User("Steve");
        //run
        run();

    }

    public static void run() {

        while(true) {
            if (!user.getResortPlans().isEmpty()) {
                System.out.println("You have selected:");
                for (Map.Entry<Resort, Integer> entry : user.getResortPlans().entrySet()) {
                    System.out.println(entry.getValue() + " day(s) at " + entry.getKey().getResortName());
                }
            }

            //generate user interface
            int selection = mainUserInterface();
            switch (selection) {
                case 1:
                    resortSelectionInterface();
                    break;
                case 2:
                    break;
                case 3:
                    System.exit(0);

            }
        }
    }

    public static int mainUserInterface() {
        Scanner userInput = new Scanner(System.in);
        System.out.println("Welcome to the Epic Pass purchase calculator!");
        System.out.println("_____________________________________________");
        System.out.println();

        while (true) {

            System.out.println("Please select one of the following options:");
            System.out.println("1. Select resorts and days");
            System.out.println("2. Calculate pass options");
            System.out.println("3. Quit");
            System.out.print("Your selection: ");
            try {
                int selection = userInput.nextInt();
                if (selection > 0 && selection < 4) return selection;
            } catch (Exception e) {

            }
            System.out.println("That was not a valid option. Please try again");
        }

    }

    public static void resortSelectionInterface() {
        Scanner userInput = new Scanner(System.in);

        System.out.println("Select resort region:");
        for (int i = 1; i <= regionList.size(); i++) {
            System.out.println(i + ". " + regionList.get(i-1).getRegionName());
        }

        int selection;
        while (true) {
            try {
                selection = userInput.nextInt();
                if (selection > 0 && selection <= regionList.size()){
                    break;
                }
            } catch (Exception e) {

            }
            System.out.println("Invalid input. Please try again.");
        }
        Region selectedRegion = regionList.get(selection - 1);
        System.out.println("Select resort:");

        int count = 1;
        List<Resort> regionalList = new ArrayList<>();
        for (Resort resort: resortList) {
            if (resort.getRegion() == selectedRegion) {
                System.out.println(count + ". " + resort.getResortName());
                regionalList.add(resort);
                count++;
            }
        }

        while (true) {
            try {
                selection = userInput.nextInt();
                if (selection > 0 && selection < regionalList.size()){
                    break;
                }
            } catch (Exception e) {

            }
            System.out.println("Invalid input. Please try again.");
        }

        Resort selectedResort = regionalList.get(selection - 1);

        user.addResortToResortPlans(selectedResort, 1);

    }

    public static void parseResortList() {
        File resortFile = new File("src/main/resources/resort-list");
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
                    resortList.add(newResort);
                }

            }

        } catch (FileNotFoundException e) {
            System.err.println("Could not find file " + resortFile.getAbsolutePath());
            System.err.println("Exiting program");
            System.exit(1);
        }

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