package dao;

import model.Region;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import javax.xml.crypto.Data;
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
        return null;
    }
}
