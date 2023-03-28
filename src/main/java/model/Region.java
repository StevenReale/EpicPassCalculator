package model;

import dao.JdbcResortDao;

import java.util.ArrayList;
import java.util.List;

public class Region {

    private int regionId;
    private String regionName;
    private List<Resort> resortsInRegion;

    public Region(int regionId, String regionName, List<Resort> resortsInRegion) {
        this.regionId = regionId;
        this.regionName = regionName;
        this.resortsInRegion = resortsInRegion;
    }

    public String getRegionName() {
        return regionName;
    }

    public List<Resort> getResortsInRegion() {
        return this.resortsInRegion;
    }

    public void addResortToRegion(Resort resort) {
        resortsInRegion.add(resort);
    }


}
