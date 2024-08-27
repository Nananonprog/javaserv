package hosp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Hospital {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/hospital_system";
        String username = "root";
        String password = "Zelana_03";

        try {
            Connection connection = DriverManager.getConnection(url, username, password);
            Statement statement = connection.createStatement();
            statement.executeUpdate("INSERT INTO doctors ( doc_name, spec) VALUES ('Владислав Викторович', 'Терапевт')");
            statement.executeUpdate("INSERT INTO doctors ( doc_name, spec) VALUES ('Виктор Владимирович', 'Окулист')");
            statement.executeUpdate("INSERT INTO doctors ( doc_name, spec) VALUES ('Сергей Львович', 'Хирург')");
            statement.executeUpdate("INSERT INTO doctors ( doc_name, spec) VALUES ('Александра Вадимовна', 'Гинеколог')");
            statement.executeUpdate("INSERT INTO doctors ( doc_name, spec) VALUES ('Кристина Сергеевна', 'Отоларинголог')");
            statement.executeUpdate("INSERT INTO doctors ( doc_name, spec) VALUES ('Остап Турхинович', 'Невролог')");


            statement.close();
            connection.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

