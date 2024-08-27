package example;

import java.sql.*;

public class Main2 {
    public static void main(String[] args) {


        String url = "jdbc:mysql://localhost:3306/users";
        String username = "root";
        String password = "Zelana_03";
//        String query = "SELECT * FROM employees WHERE name = ?";
        String query = "INSERT INTO employees VALUES(?,?,?,?)";
        try {
            Connection connection = DriverManager.getConnection(url, username, password);
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1,2);
            preparedStatement.setString(2,"Виктор");
            preparedStatement.setString(3,"HR");
            preparedStatement.setDouble(4,85000.0);

            int row = preparedStatement.executeUpdate();
            if(row>0){
                System.out.println("Данные записаны успешно!");
            }else {
                System.out.println("Ошибка сохранения");
            }
//            preparedStatement.setString(1, "Ирина");
//
//            ResultSet resultSet = preparedStatement.executeQuery();
//
//            while(resultSet.next()){
//                int id = resultSet.getInt("id");
//                String name = resultSet.getString("name");
//                String job = resultSet.getString("job");
//                double salary = resultSet.getDouble("salary");

//                System.out.println("id " + id);
//                System.out.println("name " + name);
//                System.out.println("job " + job);
//                System.out.println("salary " + salary);
//            }

//            resultSet.close();
            preparedStatement.close();
            connection.close();

        } catch (SQLException e){
            e.printStackTrace();
        }
//
    }
}
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
