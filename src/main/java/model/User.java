package model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class User {

    private String name;
    private Map<Integer, Integer> resortPlans = new HashMap<>();

    public User(String name) {
        this.name = name;
    }

    public Map<Integer, Integer> getResortPlans() {
        return resortPlans;
    }

    public void addOrUpdateResortPlans(Resort newResort, int numOfDays) {
        resortPlans.put(newResort.getResortId(), numOfDays);
    }

    public void deleteResortPlans(Resort resort) {
        if (resortPlans.containsKey(resort)) {
            resortPlans.remove(resort);
        }
    }

}
