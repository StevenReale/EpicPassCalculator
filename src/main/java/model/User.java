package model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class User {

    private String name;
    private Map<Resort, Integer> resortPlans = new HashMap<>();

    public User(String name) {
        this.name = name;
    }

    public Map<Resort, Integer> getResortPlans() {
        return resortPlans;
    }

    public void addOrUpdateResortPlans(Resort newResort, int numOfDays) {
        resortPlans.put(newResort, numOfDays);
    }

    public void deleteResortPlans(Resort resort) {
        if (resortPlans.containsKey(resort)) {
            resortPlans.remove(resort);
        }
    }

    public List<Resort> displayResortPlans() {
        List<Resort> planList = new ArrayList<>();

        System.out.println();
        System.out.println("You have selected:");

        int count = 1;
        for (Map.Entry<Resort, Integer> entry : this.getResortPlans().entrySet()) {
            Resort currentResort = entry.getKey();
            System.out.println(count + ". " + entry.getValue() + " day(s) at " + currentResort.getResortName());
            planList.add(currentResort);
            count++;
        }
        return planList;
    }
}
