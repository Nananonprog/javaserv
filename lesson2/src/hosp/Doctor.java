package hosp;

import java.sql.*;
import java.util.Scanner;

public class Doctor {
    private Connection connection;
    private Scanner input;

    public Doctor(Connection connection, Scanner input) {
        this.connection = connection;
        this.input = input;
    }
    Patient patient = new Patient(connection, input);
    public void viewDoctor(Connection connection) throws SQLException {
        String sql = "SELECT * FROM doctors";
        try(Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql)){

            System.out.println("********************************************************************");
            System.out.println("| Идентификатор пациента |           Имя           | Специализация |");
            System.out.println("********************************************************************");
            while (resultSet.next()){
                int docId = resultSet.getInt("id_doc");
                String docName = resultSet.getString("doc_name");
                String spec = resultSet.getString("spec");

                System.out.printf("| %-22d | %-23s | %-13s |%n", docId, docName, spec);
            }
            System.out.println("********************************************************************");
        }
    }

    public void record(){
        input.nextLine();
        System.out.print("\nВведите дату приема: ");
        String datepr = input.nextLine();
        System.out.print("\nВведите когда записан пациент: ");
        String dateZap = input.nextLine();
        System.out.print("Время приема: ");
        String timePr = input.nextLine();
        System.out.print("Врач: ");
        String doctor = input.nextLine();
        System.out.print("ФИО пациента: ");
        String namePat = input.nextLine();
        System.out.print("Email пациента: ");
        String email = input.nextLine();
        if (!patient.patExists(email)){
            System.out.println("Добавьте пациента в базу: \n");
            patient.register();
//            if(!docExists(doctor)){
//                System.out.println("Врача нет в базе данных.");
//            }
            return;

        }
        String register_query = "INSERT INTO records (datepr, datezap, timeprim, doc_name, fio_pat, pat_email) VALUES(?, ?, ?,?,?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(register_query);
            preparedStatement.setString(1, datepr);
            preparedStatement.setString(2, dateZap);
            preparedStatement.setString(3, timePr);
            preparedStatement.setString(4, doctor);
            preparedStatement.setString(5, namePat);
            preparedStatement.setString(6, email);

            int row = preparedStatement.executeUpdate();
            if(row > 0){
                System.out.println("Запись пациента прошла успешно");
            }else{
                System.out.println("Не удалось записать пациента");
            }
            preparedStatement.close();
        }catch (SQLException e){
            e.printStackTrace();
        }

    }

    public boolean docExists(String name)
    {
        String query = "SELECT * FROM doctors WHERE doc_name = ?";
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, name );
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

