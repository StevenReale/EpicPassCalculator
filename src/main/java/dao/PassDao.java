package dao;

import model.Pass;

import java.util.List;

public interface PassDao {

    /**
     * Gets all passes
     */
    public List<Pass> getAllPasses();

    /**
     * Gets pass by passId
     */
    public Pass getPassById(int passId);
}
