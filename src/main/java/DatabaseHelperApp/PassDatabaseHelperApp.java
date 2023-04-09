package DatabaseHelperApp;

import dao.JdbcPassDao;
import dao.JdbcResortDao;
import dao.PassDao;
import dao.ResortDao;
import model.Pass;
import model.Resort;
import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.List;

public class PassDatabaseHelperApp {

    public static void main(String[] args) {
    //Create datasource
        BasicDataSource dataSource = new BasicDataSource();
        dataSource.setUrl("jdbc:postgresql://localhost:5432/EpicPassDB");
        dataSource.setUsername("postgres");
        dataSource.setPassword("postgres1");

        ResortDao resortDao = new JdbcResortDao(dataSource);
        PassDao passDao = new JdbcPassDao(dataSource);

        List<Resort> allResorts = resortDao.getAllResorts();
        Pass passtoPopulate = passDao.getPassById(3);

        for (Resort resort: allResorts) {
            System.out.println("Inserting " + resort.getResortName() + " into " + passtoPopulate.getPassName());
            resortDao.addPassAccess(passtoPopulate, resort, 1, false, true, true);
        }



    }

}
