package model;

import java.util.HashMap;
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

    public void displayResortPlans() {
        System.out.println();
        System.out.println("You have selected:");
        for (Map.Entry<Resort, Integer> entry : this.getResortPlans().entrySet()) {
            System.out.println(entry.getValue() + " day(s) at " + entry.getKey().getResortName());
        }
    }
}
