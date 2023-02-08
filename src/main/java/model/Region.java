package model;

import java.util.ArrayList;
import java.util.List;

public class Region {
    private String regionName;

    private List<Resort> resortsInRegion;

    public Region(String regionName) {
        this.regionName = regionName;
        resortsInRegion = new ArrayList<>();
    }

    public String getRegionName() {
        return regionName;
    }

    public List<Resort> getResortsInRegion() {
        return resortsInRegion;
    }

    public void addResortToRegion(Resort resort) {
        resortsInRegion.add(resort);
    }


}
