package DatabaseHelperApp;

import dao.ResortDao;
import org.apache.commons.dbcp2.BasicDataSource;

public class PassDatabaseHelperApp {

    public static void main(String[] args) {
    //Create datasource
        BasicDataSource dataSource = new BasicDataSource();
        dataSource.setUrl("jdbc:postgresql://localhost:5432/EpicPassDB");
        dataSource.setUsername("postgres");
        dataSource.setPassword("postgres1");

        ResortDao resortDao = null;
    }

}
