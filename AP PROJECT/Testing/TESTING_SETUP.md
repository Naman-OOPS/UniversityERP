# University ERP Testing - How to Run

## Java Version & Requirements
- **Java Version:** Java 17
- **Build Tool:** Maven 3.8.0+
- **Database:** MySQL 8.0+
- **IDE:** IntelliJ IDEA / Eclipse / VS Code

## Database Setup

### Prerequisites
1. MySQL Server installed and running
2. Create test database:
```sql
CREATE DATABASE university_erp_test;
```

### Connection Settings

#### Default Test Database Configuration:
- **Host:** localhost
- **Port:** 3306
- **Database:** university_erp_test
- **Username:** root
- **Password:** root

#### Alternative Configurations:
Update `src/test/resources/application-test.properties`:
```properties
db.url=jdbc:mysql://localhost:3306/university_erp_test
db.user=root
db.password=root
db.driver=com.mysql.cj.jdbc.Driver
```

## Running Tests

### Run all tests:
```bash
mvn clean test
```

### Run specific test class:
```bash
mvn test -Dtest=UserAuthDAOTest
```

### Run with coverage report:
```bash
mvn clean test jacoco:report
```

## Default Test Accounts

### Admin Account
- **Username:** admin1
- **Password:** Test@123
- **Email:** admin1@university.edu
- **Role:** ADMIN

### Instructor Account
- **Username:** instr_smith
- **Password:** Test@123
- **Email:** smith@university.edu
- **Role:** INSTRUCTOR

### Student Accounts
- **Username:** student_john
- **Password:** Test@123
- **Email:** john.doe@university.edu
- **Roll:** CSE001

- **Username:** student_jane
- **Password:** Test@123
- **Email:** jane.smith@university.edu
- **Roll:** CSE002

## Seed Scripts

Two SQL scripts are provided in `src/test/resources/`:

1. **schema-mysql.sql** - Creates all database tables and indexes
2. **sample-data-mysql.sql** - Inserts sample test data

### Manual Setup:
```bash
mysql -u root -p university_erp_test < schema-mysql.sql
mysql -u root -p university_erp_test < sample-data-mysql.sql
```
