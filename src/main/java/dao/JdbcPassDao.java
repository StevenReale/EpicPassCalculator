package dao;

import model.Pass;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import javax.sql.DataSource;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class JdbcPassDao implements PassDao {

    private final JdbcTemplate jdbcTemplate;

    public JdbcPassDao(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public List<Pass> getAllPasses() {
        List<Pass> passes = new ArrayList<>();
        String sql = "SELECT * FROM pass;";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql);
        while (result.next()) {
            passes.add(mapRowToPass(result));
        }
        return passes;
    }

    @Override
    public Pass getPassById(int passId) {
        Pass pass = null;
        String sql = "SELECT * FROM pass WHERE pass_id = ?;";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, passId);

        if (result.next()){
            pass = mapRowToPass(result);
        }
        return pass;
    }

    private Pass mapRowToPass(SqlRowSet result) {
        Pass pass = new Pass();
        pass.setPassId(result.getInt("pass_id"));
        pass.setPassName(result.getString("name"));
        pass.setPassPrice(BigDecimal.valueOf(result.getDouble("price")));

        return pass;
    }
}
