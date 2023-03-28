package dao;

import model.Region;

import java.util.List;

public interface RegionDao {

    /**
     * Gets a region by region_id
     */

    public Region getRegionById(int regionId);

    /**
     * Gets a list of all regions
     */

    public List<Region> getAllRegions();
}
