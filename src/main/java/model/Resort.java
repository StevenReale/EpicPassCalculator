package model;


import java.util.List;
import java.util.Scanner;

public class Resort {

    private String resortName;
    private Region region;

    public Resort(String resortName, Region region) {
        this.resortName = resortName;
        this.region = region;
    }

    public String getResortName() {
        return resortName;
    }

    public Region getRegion() {
        return region;
    }

    public static Resort selectResort(List<Region> regionList, List<Resort> resortList) {
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


        int selection;
        while (true) {
            try {
                selection = userInput.nextInt();
                if (selection > 0 && selection <= regionList.size() + 1){
                    break;
                }
            } catch (Exception e) {

            }
            System.out.println("Invalid input. Please try again.");
        }

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

        while (true) {
            try {
                selection = userInput.nextInt();
                if (selection > 0 && selection <= count){
                    break;
                }
            } catch (Exception e) {

            }
            System.out.println("Invalid input. Please try again.");
        }

        if (selection == count) {
            Resort resort = null;
            return resort;
        }

        Resort selectedResort = selectedRegion.getResortsInRegion().get(selection - 1);

        return selectedResort;
    }

}
