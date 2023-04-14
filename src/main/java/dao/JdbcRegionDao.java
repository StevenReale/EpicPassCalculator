package dao;

import model.Region;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import javax.sql.DataSource;
import javax.xml.crypto.Data;
import java.util.ArrayList;
import java.util.List;

public class JdbcRegionDao implements RegionDao {

    JdbcTemplate jdbcTemplate = null;

    public JdbcRegionDao(DataSource dataSource) {this.jdbcTemplate = new JdbcTemplate(dataSource);}

    @Override
    public Region getRegionById(int regionId) {
        return null;
    }

    @Override
    public List<Region> getAllRegions() {
        List<Region> allRegions = new ArrayList<>();
        String sql = "SELECT * FROM region;";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql);
        while (result.next()){
            allRegions.add(mapRowToRegion(result));
        }
        return allRegions;

    }

    private Region mapRowToRegion(SqlRowSet result) {
        Region region = new Region(
                result.getInt("region_id"),
                result.getString("name")
        );
        return region;
    }
}
