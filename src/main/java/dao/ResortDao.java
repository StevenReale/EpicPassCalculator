package dao;

import model.Resort;

import java.util.List;

public interface ResortDao {

    /**
     * Gets resort by id from datastore
     */
    Resort getResort (int resortId);

    /**
     * Gets a list of all resorts
     */
    List<Resort> getAllResorts();

    /**
     * Gets a list of resorts by region
     **/
    List<Resort> getResortsByRegionId(int regionId);

    /**
     * Adds new resort to the datastore
     **/
    Resort createResort(Resort resort);

}
