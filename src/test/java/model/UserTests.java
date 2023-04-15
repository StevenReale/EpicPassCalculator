package model;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.util.Map;

public class UserTests {

    private User testUser;
    private final Resort RESORT_1 = new Resort(1, "Resort Name", 1, 1);
    private final Integer ONE_DAY = 1;
    private final Integer TWO_DAYS = 2;

    @Before
    public void setup() {
      testUser = new User("testUser");
    }

    @Test
    public void adding_resort_appears_in_map() {
        //Act
        testUser.addOrUpdateResortPlans(RESORT_1, ONE_DAY);
        Map<Resort, Integer> plans = testUser.getResortPlans();

        //Assert
        Assert.assertEquals("Resort should appear in map and have correct number of days.", plans.get(RESORT_1), ONE_DAY);

    }

    @Test
    public void adding_resort_that_already_exists_in_map_overwrites_value() {
        //Act
        testUser.addOrUpdateResortPlans(RESORT_1, ONE_DAY);
        testUser.addOrUpdateResortPlans(RESORT_1, TWO_DAYS);
        Map<Resort, Integer> plans = testUser.getResortPlans();

        //Assert
        Assert.assertEquals("Size of map should be 1", plans.size(), 1);
    }

}
