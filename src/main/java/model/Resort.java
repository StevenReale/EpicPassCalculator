package model;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
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

    public static Resort selectResort(List<Region> regionList) {
        Scanner userInput = new Scanner(System.in);

        System.out.println();
        System.out.println("Select resort region:");
        for (int i = 1; i <= regionList.size() + 1; i++) {
            if (i == regionList.size() + 1) {
                System.out.println("or select " + i + " to cancel.");
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
            System.out.println(count + ". " + resort.getResortName());
            count++;
        }
        System.out.println("or select " + count + " to cancel.");

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
