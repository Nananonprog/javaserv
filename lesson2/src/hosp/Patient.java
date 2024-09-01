package hosp;

import java.sql.*;
import java.util.Date;
import java.util.Scanner;

public class Patient {

    private Connection connection;
    private Scanner input;

    public Patient(Connection connection, Scanner input) {
        this.connection = connection;
        this.input = input;
    }

    public void register(){
        input.nextLine();
        System.out.print("\nВведите ФИО: ");
        String pat_name = input.nextLine();
        System.out.print("\nВведите номер мед. карты: ");
        int card = input.nextInt();
        input.nextLine();
        System.out.print("Дата рождения: ");
        String date = input.nextLine();
        System.out.print("Пол: ");
        String sex = input.nextLine();
        System.out.print("Номер телефона: ");
        String num = input.nextLine();
        System.out.print("Email: ");
        String email = input.nextLine();
        if (patExists(email)){
            System.out.println("Пользователь с таким email уже существует\n");
            return;
        }
        String register_query = "INSERT INTO patient(pat_name, pat_card, datebirth, sex, phone_num, email) VALUES(?, ?, ?,?,?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(register_query);
            preparedStatement.setString(1, pat_name);
            preparedStatement.setInt(2, card);
            preparedStatement.setString(3, date);
            preparedStatement.setString(4, sex);
            preparedStatement.setString(5, num);
            preparedStatement.setString(6, email);

            int row = preparedStatement.executeUpdate();
            if(row > 0){
                System.out.println("Регистрация пациента прошла успешно");
            }else{
                System.out.println("Регистрация пациента не удалась");
            }
            preparedStatement.close();
        }catch (SQLException e){
            e.printStackTrace();
        }

    }

    public boolean patExists(String email)
    {
        String query = "SELECT * FROM patient WHERE email = ?";
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

    public void viewPatient(Connection connection) throws SQLException {
        String sql = "SELECT * FROM patient";
        try(Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql)){

            System.out.println("****************************************************************************************************************************************");
            System.out.println("| Идентификатор пациента |             ФИО             | Медицинская карта | Дата рождения | Пол | Номер телефона |  Электронная почта |");
            System.out.println("****************************************************************************************************************************************");
            while (resultSet.next()){
                int patId = resultSet.getInt("id_pat");
                String patName = resultSet.getString("pat_name");
                int card = resultSet.getInt("pat_card");
                String date = resultSet.getString("datebirth");
                String sex = resultSet.getString("sex");
                String num = resultSet.getString("phone_num");
                String email = resultSet.getString("email");
                System.out.printf("| %-22d | %-27s | %-17d | %-13s | %-3s | %-14s | %-18s |%n", patId,patName, card, date, sex, num, email);
            }
            System.out.println("****************************************************************************************************************************************");
        }
    }



}
