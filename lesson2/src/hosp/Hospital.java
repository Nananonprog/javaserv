package hosp;

import jdbc.BankingManagementSystem.User;

import java.sql.*;
import java.util.Scanner;

public class Hospital {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/hospital_system";
        String username = "root";
        String password = "Zelana_03";

        try {

            Connection connection = DriverManager.getConnection(url, username, password);
            Scanner input = new Scanner(System.in);
            Doctor doctor = new Doctor(connection, input);
            Patient patient = new Patient(connection, input);

            while (true) {
                System.out.println("*** СИСТЕМА УПРАВЛЕНИЯ БОЛЬНИЦЕЙ ***\n");
                System.out.println("1. Добавить пациента");
                System.out.println("2. Просмотр пациентов");
                System.out.println("3. Просмотр врачей");
                System.out.println("4. Записаться на прием");
                System.out.println("5. Выход");
                System.out.print("Ваш выбор: ");

                int choice1 = input.nextInt();
                switch (choice1) {
                    case 1:
                        patient.register();
                        break;
                    case 2:
                        patient.viewPatient(connection);
                        break;
                    case 3:
                        doctor.viewDoctor(connection);
                        break;
                    case 4:
                        record(connection, input, patient, doctor);
                        break;
                    case 5:
                        break;
                    default:
                        System.out.println("Такого варианта нет!");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public static void record(Connection connection, Scanner input, Patient patient, Doctor doc){
        try {
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
            if (!patient.patExists(email)) {
                System.out.println("Добавьте пациента в базу(нажмите ENTER). Затем запишите на прием ещё раз");
                patient.register();
                return;
            }
            else if (!doc.docExists(doctor)){
                System.out.println("Запись не удалась. Такого врача нет в базе. Попробуйте ещё раз.");
                return;
            }

//        String register_query = "INSERT INTO records (datepr, datezap, timeprim, doc_name, fio_pat, pat_email) VALUES(?, ?, ?,?,?,?)";
            String sql = "INSERT INTO records (datepr, datezap, timeprim, doc_name, fio_pat, pat_email) VALUES ('"+ datepr + "', '" + dateZap + "', '" + timePr + "', '" + doctor + "', '" + namePat + "', '" + email + "')";
            try(Statement statement = connection.createStatement()){
                int row = statement.executeUpdate(sql);
                if(row > 0) {
                    System.out.println("Запись выполнена");
                }
            }
        }catch(SQLException e){
            e.printStackTrace();
        }

    }

}

