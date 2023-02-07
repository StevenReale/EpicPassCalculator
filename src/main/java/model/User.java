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

    public void addResortToResortPlans(Resort newResort, int numOfDays) {
         resortPlans.put(newResort, numOfDays);
    }

    public void updateDaysAtResort(Resort resort, int newNumOfDays) {
        resortPlans.put(resort, newNumOfDays);
    }

    public void deleteResort(Resort resort) {
        if (resortPlans.containsKey(resort)) {
            resortPlans.remove(resort);
        }
    }
}
