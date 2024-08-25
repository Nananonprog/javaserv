package example;

import javax.swing.*;
import java.sql.*;
import java.util.Comparator;
import java.util.Scanner;

public class ReservationSystem {
       private static final String url = "jdbc:mysql://localhost:3306/hotel_db";
        private static final String username = "root";
        private static final String password = "Zelana_03";


    public static void main(String[] args) {
        try{
            Connection connection = DriverManager.getConnection(url, username, password);
            while (true){
                System.out.println("\nСИСТЕМА БРОНИРОВАНИЯ ОТЕЛЯ");
                Scanner input = new Scanner(System.in);
                System.out.println("1. Бронирование номера");
                System.out.println("2. Просмотр бронирования");
                System.out.println("3. Уточнить номер комнаты");
                System.out.println("4. Обновить бронирование");
                System.out.println("5. Удалить бронирование");
                System.out.println("0. Выход");
                System.out.print("Выберите опцию: ");
                int choice = input.nextInt();
                switch (choice){
                    case 1:
                        reserveRoom(connection, input);
                        break;
                    case 2:
                        viewReservations(connection);
                        break;
                    case  3:
                        getRoomNumber(connection, input);
                        break;
                    case 4:
                        updateReservation(connection, input);
                        break;
                    case 5:
                        deleteReservation(connection,input);
                        break;
                    case 0:
                        exit();
                        input.close();
                        return;
                    default:
                        System.out.println("Неверный выбор. Попробуйте еще раз.");



                }
            }
        }catch (SQLException e){//SQLException | InterruptedException e
            e.printStackTrace();
        }catch(InterruptedException e){
            throw new RuntimeException(e);
        }
    }

    public static void exit() throws InterruptedException {
        System.out.print("Выход из системы");
        int i = 5;
        while(i != 0){
            System.out.print(".");
            Thread.sleep(1000);
            i--;
        }
        System.out.println("Спасибо за использование системы бронирования отеля");

    }

    public static void reserveRoom(Connection connection, Scanner input){
        try{
            System.out.print("Введите имя гостя: ");
            String questName = input.next();


            System.out.print("Введите количество гостей: ");
            int roomNumber = input.nextInt();

            System.out.print("Введите контактный номер: ");
            String contactNumber = input.next();

            String sql = "INSERT INTO reservations (quest_name, root_number, contact_number) VALUES ('"+questName + "'," + roomNumber + ", '" + contactNumber + "')";
            try(Statement statement = connection.createStatement()){
                int row = statement.executeUpdate(sql);
                if(row > 0) {
                    System.out.println("Бронирование успешно");
                }
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
    }

    public static void viewReservations(Connection connection) throws SQLException {
        String sql = "SELECT * FROM reservations";
       try(Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql)){
           System.out.println("Текущее бронирование:");
           System.out.println("+----------------------------+-------+---------------+------------------+-------------------+");
           System.out.println("| Идентификатор бронирования | Гость | Кол-во гостей | Контактный номер | Дата бронирования |");
           System.out.println("+----------------------------+-------+---------------+------------------+-------------------+");
           while (resultSet.next()){
               int reservationId = resultSet.getInt("reservation_id");
               String questName = resultSet.getString("quest_name");
               int roomNumber = resultSet.getInt("root_number");
               String contactNumber = resultSet.getString("contact_number");
               String reservationDate = resultSet.getTimestamp("reservation_date").toString();
               System.out.printf("| %-26d | %-15s | %-13d | %-16s | %-21s |%n", reservationId,questName, roomNumber, contactNumber, reservationDate);
           }
           System.out.println("+----------------------------+-----------------+---------------+------------------+-----------------------+");
       }
    }
    public static void getRoomNumber(Connection connection, Scanner input) throws SQLException {
        System.out.print("Введите идентификатор бронирования: ");
        int reservationId = input.nextInt();
        System.out.print("Введите имя гостя:");
        String guestName = input.next();

        String sql = "SELECT root_number FROM reservations WHERE reservation_id = " + reservationId + " AND quest_name = '" + guestName+ "'";

        try(Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql)){
            if(resultSet.next()){
                int roomNumber  = resultSet.getInt("root_number");
                System.out.println("Кол-во гостей для идентификатора бронирования " + reservationId + " и гостя " + guestName + " является: " + roomNumber);
            }else
                System.out.println("Бронирование не найдено для данного идентификатора и имени гостя.");
        }
    }

    public static void updateReservation(Connection connection, Scanner input){
        System.out.print("Введите идентификатор бронирования для обновления:  ");
        int reservationId = input.nextInt();
        input.nextLine();

        if(!reservationExists(connection, reservationId)){
            System.out.println("Бронирование не найдено для данного идентификатора.");
            return;
        }

        System.out.print("Введите новое имя гостя: ");
        String newGuestName = input.nextLine();
        System.out.print("Введите кол-во гостей: ");
        int newRoomNumber = input.nextInt();
        System.out.println("Введите новый контактный номер: ");
        String newContactNumber = input.next();

        String sql = "UPDATE reservations SET quest_name = '" + newGuestName + "', root_number = " + newRoomNumber + ", contact_number = '" + newContactNumber + "' WHERE reservation_id = " + reservationId;
        try(Statement statement = connection.createStatement()){
            int row = statement.executeUpdate(sql);
            if(row > 0){
                System.out.println("Бронирование успешно обновлено.");
            }else{
                System.out.println("Обновление резервирования не удалось.");
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    private static boolean reservationExists(Connection connection, int reservationId){
        String sql = "SELECT reservation_id FROM reservations WHERE reservation_id = " + reservationId;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);{
                return resultSet.next();
            }
        }catch (SQLException e){
            e.printStackTrace();
            return false;
        }

    }

    private static void deleteReservation(Connection connection, Scanner input){
        System.out.print("Введите идентификатор для удаления: ");
        int reservationId = input.nextInt();

        if(!reservationExists(connection, reservationId)){
            System.out.println("Бронирование не найдено для данного идентификатора.");
            return;
        }
        String sql = "DELETE FROM reservations WHERE reservation_id = " + reservationId;
        try(Statement statement = connection.createStatement()){
            int row = statement.executeUpdate(sql);
            if(row > 0){
                System.out.println("Бронирование успешно удалено.");
            }else{
                System.out.println("Удаление резервирования не удалось.");
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
    }



}
