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
    private View view;

    public EpicPassCalculator() {

        resortList = new ArrayList<>();
        regionList = new ArrayList<>();
        parseResortList();

        user = new User("Steve");

        view = new View();
    }

    public void run() {

        view.greet();

        while (true) {

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

        view.mainMenu();
        return view.promptForInteger(4);

    }

    private void resortSelectionInterface() {
        while (true) {
            view.resortPlanningMenu();
            int selection = view.promptForInteger(5);

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
        Resort resort = selectResort(regionList, resortList);
        if (resort == null) return;

        System.out.println("How many days will you spend at " + resort.getResortName() + "?");
        int numOfDays = view.promptForInteger();

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
        Resort resort = selectResort(planRegionList, planResortList);
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

                if (currentLine.charAt(0) == '*') {
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

    public Resort selectResort(List<Region> regionList, List<Resort> resortList) {
        Scanner userInput = new Scanner(System.in);

        System.out.println();
        System.out.println("Select resort region:");
        for (int i = 1; i <= regionList.size() + 1; i++) {
            if (i == regionList.size() + 1) {
                System.out.println(i + ". Cancel and return to previous menu.");
            } else {
                System.out.println(i + ". " + regionList.get(i - 1).getRegionName());
            }
        }

        int selection = view.promptForInteger(regionList.size());

        if (selection == regionList.size() + 1) {
            Resort resort = null;
            return resort;
        }

        Region selectedRegion = regionList.get(selection - 1);

        System.out.println();
        System.out.println("Select resort:");

        int count = 1;

        for (Resort resort: selectedRegion.getResortsInRegion()) {
            if (resortList.contains(resort)) {
                System.out.println(count + ". " + resort.getResortName());
            }
            count++;
        }
        System.out.println(count + ". Cancel and return to previous menu.");

        selection = view.promptForInteger(count);

        if (selection == count) {
            Resort resort = null;
            return resort;
        }

        Resort selectedResort = selectedRegion.getResortsInRegion().get(selection - 1);

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