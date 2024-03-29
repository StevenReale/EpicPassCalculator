# Epic Pass Calculator

A Java app using Spring Boot for JDBC to a PostgreSQL database. Calculates the best combination of [Epic Pass products](https://www.epicpass.com/) for skiers and riders based on their intended travel plans for the season.

## Functionality roadmap

### Completed
1. Build a command-line interface to store user's travel plans
2. Build objects to store information on resorts and resort regions
3. Build functionality to import resort information from file
4. Build an object to house user travel plans
5. Build an object to house pass information
6. Built PostgreSQL database housing all pass data
7. Spring Boot JDBC interface implemented


### Current development
1. Unit testing
2. Integration testing

### Future steps

1. Further develop command-line interface to account for various pass options
2. Further Spring Boot JDBC interface implementation
3. Build logic to calculate best combination of passes for user's travel plans
4. Build a web interface to house app

### Known bugs

### Bugs fixed
1. Attempting to change existing resort plans instead created second resort plan.
2. promptForInteger() method did not correctly handle non-integer values.
