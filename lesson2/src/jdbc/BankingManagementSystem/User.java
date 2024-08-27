package jdbc.BankingManagementSystem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class User {
    private Connection connection;
    private Scanner input;

    public User(Connection connection, Scanner input) {
        this.connection = connection;
        this.input = input;
    }

    public void register(){
        input.nextLine();
        System.out.println("\nИмя: ");
        String full_name = input.nextLine();
        System.out.println("Email: ");
        String email = input.nextLine();
        System.out.println("Пароль: ");
        String password = input.nextLine();
        if (userEexists(email)){
            System.out.println("Пользователь с таким email уже существует\n");
            return;
        }
        String register_query = "INSERT INTO user VALUES(?, ?, ?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(register_query);
            preparedStatement.setString(1, full_name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, password);

            int row = preparedStatement.executeUpdate();
            if(row > 0){
                System.out.println("Регистрация прошла успешно");
            }else{
                System.out.println("Регистрация не удалась");
            }
            preparedStatement.close();
        }catch (SQLException e){
            e.printStackTrace();
        }

    }

    public boolean userEexists(String email)
    {
        String query = "SELECT * FROM user WHERE email = ?";
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();
//            preparedStatement.close();
            if(resultSet.next()){
                return true;
            }else {
                return false;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }
}
