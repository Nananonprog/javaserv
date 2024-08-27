package example;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Main5 {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/users";
        String username = "root";
        String password = "Zelana_03";

        try {
            Connection connection = DriverManager.getConnection(url, username, password);
            connection.setAutoCommit(false);
            String query = "INSERT INTO employees(name, job, salary) VALUES(?, ?, ?)";

            Statement statement = connection.createStatement();
            statement.addBatch("INSERT INTO employees (name, job, salary) VALUES ('Igor', 'HR Manager', 65000.00)");
            statement.addBatch("INSERT INTO employees (name, job, salary) VALUES ('Oleg', 'C++ Developer', 82000.00)");
            statement.addBatch("INSERT INTO employees (name, job, salary) VALUES ('Petr', 'JS Developer', 67000.00)");

            statement.executeBatch();
            connection.commit();
            System.out.println("Пакетная обработка прошла успешно");


        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
