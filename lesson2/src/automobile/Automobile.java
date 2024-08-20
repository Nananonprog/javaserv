package automobile;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Automobile {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/auto_db";
        String username = "root";
        String password = "Zelana_03";

        try {
            Connection connection = DriverManager.getConnection(url, username, password);
            Statement statement = connection.createStatement();
            statement.executeUpdate("CREATE TABLE info (id INT PRIMARY KEY AUTO_INCREMENT, manufacturer VARCHAR(255), name VARCHAR(255), capacity DOUBLE, year INT, color VARCHAR(255), type VARCHAR(255))");
            statement.executeUpdate("INSERT INTO info (manufacturer, name, capacity, year, color, type) VALUES ('Toyota', 'Corolla Axio XI', 1.5, 2019, 'white', 'Sedan')");
            statement.executeUpdate("INSERT INTO info (manufacturer, name, capacity, year, color, type) VALUES ('Kia', 'Soul III', 2.0, 2024, 'blue', 'Hatchback')");
            statement.executeUpdate("INSERT INTO info (manufacturer, name, capacity, year, color, type) VALUES ('Volvo', 'XC70 II', 2.4, 2014, 'black', 'Station wagon')");

            statement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}