//package example;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.SQLException;
//
//public class Main2 {
//    public static void main(String[] args) {
//
//
//        String url = "jdbc:mysql://localhost:3306/users";
//        String username = "root";
//        String password = "Zelana_03";
//        String query = "SELECT * FROM employees WHERE name = ?";
//
//        try {
//            Connection connection = DriverManager.getConnection(url, username, password);
//        } catch (SQLException e){
//            e.printStackTrace();
//        }
//
//    }
//}
//try{
//        Connection connection = DriverManager.getConnection(url, username, password);
//        while (true){
//        System.out.println("\nБАЗА ДАННЫХ \"АВТОМОБИЛИ\"");
//        Scanner input = new Scanner(System.in);
//        System.out.println("1. Бронирование номера");
//        System.out.println("2. Просмотр бронирования");
//        System.out.println("3. Уточнить номер комнаты");
//        System.out.println("4. Обновить бронирование");
//        System.out.println("5. Удалить бронирование");
//        System.out.println("0. Выход");
//        System.out.print("Выберите опцию: ");
//        int choice = input.nextInt();
//        switch (choice){
//        case 1:
//        reserveRoom(connection, input);
//        break;
//        case 2:
//        viewReservations(connection);
//        break;
//        case  3:
//        getRoomNumber(connection, input);
//        break;
//        case 4:
//        updateReservation(connection, input);
//        break;
//        case 5:
//        deleteReservation(connection,input);
//        break;
//        case 0:
//        exit();
//        input.close();
//        return;
//default:
//        System.out.println("Неверный выбор. Попробуйте еще раз.");
//
//
//
//        }
//        }
//        }catch (SQLException e){//SQLException | InterruptedException e
//        e.printStackTrace();
//        }catch(InterruptedException e){
//        throw new RuntimeException(e);
//        }
//        }
