package jdbc.BankingManagementSystem;

import java.sql.*;
import java.util.Scanner;

public class Accounts {
    private Connection connection;
    private Scanner input;

    public Accounts(Connection connection, Scanner input) {
        this.connection = connection;
        this.input = input;
    }
    public boolean account_exists(String email){
        String query = "SELECT account_number FROM account WHERE email = ?";
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                return true;
            }
        } catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }
    public long open_account(String email){
        if(!account_exists(email)){
            String open_account_query = "INSERT INTO account VALUES(?,?,?,?,?)";
            input.nextLine();
            System.out.print("Введите имя: ");
            String full_name = input.nextLine();
            System.out.print("Введите начальную сумму: ");
            double balance = input.nextDouble();
            input.nextLine();
            System.out.print("Введите PIN-код: ");
            String security_pin = input.nextLine();

            try{
            long account_number = generateAccountNumber();
            PreparedStatement preparedStatement = connection.prepareStatement(open_account_query);
            preparedStatement.setLong(1, account_number);
            preparedStatement.setString(2, full_name);
            preparedStatement.setString(3, email);
            preparedStatement.setDouble(4, balance);
            preparedStatement.setString(5, security_pin);
            int row = preparedStatement.executeUpdate();
            if(row > 0){
                return account_number;
            }else{
                throw new RuntimeException("Создание учетной записи не удалось(");

            }
            }catch (SQLException e){
                e.printStackTrace();
            }


        }
        throw new RuntimeException("Аккаунт уже существует");

    }

    private long generateAccountNumber(){
        try{
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT account_number FROM account ORDER BY account_number DESC LIMIT 1");
        if(resultSet.next()){
            long last_account_number = resultSet.getLong("account_number");
            return last_account_number + 1;
        }
    }catch (SQLException e){
            e.printStackTrace();
        }
        return 10000100;
    }
    public long getAccountNumber(String email){
        String query = "SELECT account_number FROM account WHERE email = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                return resultSet.getLong("account_number");

            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        throw new RuntimeException("Номер счета не существует");

    }

}
