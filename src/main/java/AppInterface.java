import model.User;
import org.springframework.core.io.FileSystemResource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.SingleConnectionDataSource;
import org.springframework.jdbc.datasource.init.ScriptUtils;

import javax.sql.DataSource;
import java.sql.SQLException;

public class AppInterface {

    private DataSource dataSource;
    private AppController controller;
    private User user;
    private View view;

    public AppInterface() {

        try {
            dataSource = DataConnection.setupDataSource();
        } catch (SQLException e) {
            System.out.println("Could not establish database connectivity");
            System.exit(-1);
        }

        user = new User("Steve");
        view = new View(user);
        controller = new AppController(dataSource, user, view);

    }

    public void run() {

        view.greet();

        while (true) {

            //generate user interface
            int selection = view.mainMenu();
            switch (selection) {
                case 1:
                    resortSelectionInterface();
                    break;
                case 2:
                    view.displayResortPlans();
                    break;
                case 3:
                    break;
                case 4:
                    System.exit(0);
//                    break;
//                default:
//                    selection = mainUserInterface();
            }
        }
    }


    private void resortSelectionInterface() {
        while (true) {

            int selection = view.resortPlanningMenu();

            switch (selection) {
                case 1:
                    controller.addOrChange();
                    break;
                case 2:
                    controller.deleteResort();
                    break;
                case 3:
                    view.displayResortPlans();
                    break;
                case 4:
                    return;
            }
        }
    }

}
/*
Class for:
User preferences
    Days at each resort, weekends/weekdays, holidays?
Resorts
Pass Product - class that instatiates specific products
    Includes name, access to resorts, holiday access, cost

1. build out interace
2. build out resorts class
3. build out user preferences
4. build out pass product excel/csv with dummy data


    (data)
 */