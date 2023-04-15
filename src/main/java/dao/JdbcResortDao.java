package dao;

import model.Pass;
import model.Resort;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

public class JdbcResortDao implements ResortDao {

    private final JdbcTemplate jdbcTemplate;

    public JdbcResortDao(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public Resort getResort(int resortId) {
        Resort resort = null;
        String sql = "SELECT resort.resort_id, resort.name, resort.tier, region.region_id FROM resort\n" +
                    "JOIN region on resort.region_id = region.region_id " +
                    "WHERE resort_id = ?;";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, resortId);
        if (result.next()) {
            resort = mapRowToResort(result);
        }
        return resort;
    }

    @Override
    public List<Resort> getAllResorts() {
        List<Resort> resorts = new ArrayList<>();
        String sql = "SELECT resort.resort_id, resort.name, resort.tier, region.region_id FROM resort\n" +
                "JOIN region on resort.region_id = region.region_id";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql);
        while (result.next()) {
            resorts.add(mapRowToResort(result));
        }
        return resorts;
    }

    @Override
    public List<Resort> getResortsByRegionId(int regionId) {
        List<Resort> resortsInRegion = new ArrayList<>();
        String sql = "SELECT resort.resort_id, resort.name, resort.tier, region.region_id FROM resort\n" +
                "JOIN region ON resort.region_id = region.region_id " +
                "WHERE region.region_id = ?;";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, regionId);
        while (result.next()) {
            resortsInRegion.add(mapRowToResort(result));
        }
        return resortsInRegion;
    }

    @Override
    public List<Resort> getResortsByTier(int tierId) {
        List<Resort> resortsInTier = new ArrayList<>();
        String sql = "SELECT * FROM resort\n" +
                "WHERE tier = ?;";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, tierId);
        while (result.next()) {
            resortsInTier.add(mapRowToResort(result));
        }
        return resortsInTier;
    }

    @Override
    public Resort createResort(Resort resort) {
        return null;
    }

    @Override
    public void addPassAccess(Pass pass, Resort resort, int daysOfAccess, boolean validHolidays, boolean validSundays, boolean validSaturdays) {
        String sql = "INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)\n" +
                "VALUES(?, ?, ?, ?, ?, ?);";
        jdbcTemplate.update(sql, pass.getPassId(), resort.getResortId(), daysOfAccess, validHolidays, validSundays, validSaturdays);

    }

    private Resort mapRowToResort(SqlRowSet result) {
        return new Resort(
                result.getInt("resort_id"),
                result.getString("name"),
                result.getInt("region_id"),
                result.getInt("tier")
        );
    }
}
