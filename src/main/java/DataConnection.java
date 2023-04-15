import org.springframework.core.io.FileSystemResource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.SingleConnectionDataSource;
import org.springframework.jdbc.datasource.init.ScriptUtils;

import javax.sql.DataSource;
import java.sql.SQLException;

public class DataConnection {

    public static DataSource setupDataSource() throws SQLException {

        // Drop and then recreate the application database under separate "admin" connection
        SingleConnectionDataSource adminDataSource = new SingleConnectionDataSource();
        adminDataSource.setUrl("jdbc:postgresql://localhost:5432/postgres");
        adminDataSource.setUsername("postgres");
        adminDataSource.setPassword("postgres1");
        JdbcTemplate adminJdbcTemplate = new JdbcTemplate(adminDataSource);
        adminJdbcTemplate.update("DROP DATABASE IF EXISTS \"EpicPassDB\";");
        adminJdbcTemplate.update("CREATE DATABASE \"EpicPassDB\";");

        // Setup up the application connection
        SingleConnectionDataSource dataSource = new SingleConnectionDataSource();
        dataSource.setUrl("jdbc:postgresql://localhost:5432/EpicPassDB");
        dataSource.setUsername("postgres");
        dataSource.setPassword("postgres1");

        //  Refresh the application database by running the setup script
        ScriptUtils.executeSqlScript(dataSource.getConnection(), new FileSystemResource("src/main/resources/epic-pass.sql"));

        return dataSource;
    }
}

