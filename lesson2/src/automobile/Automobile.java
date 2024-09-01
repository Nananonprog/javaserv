//package automobile;
//
//import java.sql.*;
//import java.util.Scanner;
//
//public class Automobile {
//    public static void main(String[] args) {
//
////        String url = "jdbc:mysql://localhost:3306/auto_db";
////        String username = "root";
////        String password = "Zelana_03";
//
////        try {
////            Connection connection = DriverManager.getConnection(url, username, password);
////            Statement statement = connection.createStatement();
//////            statement.executeUpdate("CREATE TABLE info (id INT PRIMARY KEY AUTO_INCREMENT, manufacturer VARCHAR(255), name VARCHAR(255), capacity DOUBLE, year INT, color VARCHAR(255), type VARCHAR(255))");
//////            statement.executeUpdate("INSERT INTO info (manufacturer, name, capacity, year, color, type) VALUES ('Toyota', 'Corolla Axio XI', 1.5, 2019, 'white', 'Sedan')");
//////            statement.executeUpdate("INSERT INTO info (manufacturer, name, capacity, year, color, type) VALUES ('Kia', 'Soul III', 2.0, 2024, 'blue', 'Hatchback')");
////            statement.executeUpdate("INSERT INTO info (manufacturer, name, capacity, year, color, type) VALUES ('Lexus', 'GS350', 3.5, 2011, 'white', 'Sedan')");
////            statement.executeUpdate("INSERT INTO info (manufacturer, name, capacity, year, color, type) VALUES ('Porshe', 'Panamera', 4.0, 2020, 'red', 'Station Wagon')");
////            statement.executeUpdate("INSERT INTO info (manufacturer, name, capacity, year, color, type) VALUES ('Skoda', 'Superb', 2.0, 2024, 'black', 'Station Wagon')");
////            statement.executeUpdate("INSERT INTO info (manufacturer, name, capacity, year, color, type) VALUES ('BMW', 'M5', 4.4, 2022, 'white', 'Sedan')");
////
////            statement.close();
////            connection.close();
////        } catch (SQLException e) {
////            e.printStackTrace();
////
////        }
////        try{
////            Connection connection = DriverManager.getConnection(url, username, password);
////            while (true){
////                System.out.println("\nБАЗА ДАННЫХ \"Автомобили\"");
////                Scanner input = new Scanner(System.in);
////                System.out.println("1. Отобразить всю таблицу");
////                System.out.println("2. Показать всех производителей");
////                System.out.println("3. Показать автомобили по году выпуска");
////                System.out.println("4. Показать автомобили конкретного производителя");
////                System.out.println("5. Фильтр автомобилей по цвету");
////                System.out.println("6. Фильтр автомобилей по объему двигателя");
////                System.out.println("7. Фильтр автомобилей по типу автомобиля");
////                System.out.println("0. Выход");
////                System.out.print("Выберите опцию: ");
////                int choice = input.nextInt();
////                switch (choice){
////                    case 1:
////                        showTable(connection);
////                        break;
////                    case 2:
////                        showManuf(connection);
////                        break;
////                    case  3:
////                        yearFilter(connection, input);
////                        break;
////                    case 4:
////                        manuFilter(connection, input);
////                        break;
////                    case 5:
////                        colorFilter(connection,input);
////                        break;
////                    case 6:
////                        capFilter(connection,input);
////                        break;
////                    case 7:
////                        typeFilter(connection,input);
////                        break;
////                    case 0:
////                        exit();
////                        input.close();
////                        return;
////                    default:
////                        System.out.println("Неверный выбор. Попробуйте еще раз.");
////
////
////
////                }
////            }
////        }catch (SQLException e){//SQLException | InterruptedException e
////            e.printStackTrace();
////        }catch(InterruptedException e){
////            throw new RuntimeException(e);
////        }
////    }
////
////    public static void exit() throws InterruptedException {
////        System.out.print("Выход из базы");
////        int i = 3;
////        while(i != 0){
////            System.out.print(".");
////            Thread.sleep(1000);
////            i--;
////        }
////        System.out.println("\nСпасибо за использование базы!");
////
////    }
////
////    public static void showTable(Connection connection) throws SQLException {
////        String sql = "SELECT * FROM info";
////        try(Statement statement = connection.createStatement();
////            ResultSet resultSet = statement.executeQuery(sql)){
////            System.out.println("********************************************************************************************************************");
////            System.out.println("| Идентификатор автомобиля | Производитель | Название автомобиля | Объем двигателя |  Год  | Цвет  |   Тип  авто   |");
////            System.out.println("+--------------------------+---------------+---------------------+-----------------+-------+-------+---------------+");
////            while (resultSet.next()){
////                int autoId = resultSet.getInt("id");
////                String manuf = resultSet.getString("manufacturer");
////                String autoName = resultSet.getString("name");
////                double capac = resultSet.getDouble("capacity");
////                int year = resultSet.getInt("year");
////                String color = resultSet.getString("color");
////                String type = resultSet.getString("type");
////                System.out.printf("| %-24d | %-13s | %-19s | %-15f | %-5d | %-5s | %-13s |%n", autoId, manuf, autoName, capac, year, color, type);
////            }
////            System.out.println("********************************************************************************************************************");
////        }
////
////
////    }
////    public static void showManuf(Connection connection){
////        String sql = "SELECT manufacturer FROM info";
////        try(Statement statement = connection.createStatement();
////            ResultSet resultSet = statement.executeQuery(sql)){
////            System.out.println("Производители авто: ");
////            while (resultSet.next()){
////                String manuf  = resultSet.getString("manufacturer");
////                System.out.println(manuf);
////            }
////        } catch (SQLException e) {
////            e.printStackTrace();
////        }
////    }
////
////    public static void yearFilter(Connection connection, Scanner input) throws SQLException {
////        System.out.print("Введите год: ");
////        int year = input.nextInt();
////        String sql = "SELECT manufacturer, name, capacity, color, type FROM info WHERE year = " + year;
////        System.out.println("Машины " + year + " года: ");
////        try(Statement statement = connection.createStatement();
////            ResultSet resultSet = statement.executeQuery(sql)) {
////            while (resultSet.next()) {
////                String name = resultSet.getString("name");
////                String man = resultSet.getString("manufacturer");
////                double cap = resultSet.getDouble("capacity");
////                String color = resultSet.getString("color");
////                System.out.println("Производитель: " + man);
////                System.out.println("Название: " + name);
////                System.out.println("Объем двигателя: " + cap);
////                System.out.println("Цвет: " + color);
////                System.out.println();
////
////            }
////        }
////    }
////
////    public static void manuFilter(Connection connection, Scanner input) throws SQLException {
////        System.out.print("Введите производителя: ");
////        String manuf = input.next();
////        String sql = "SELECT name, capacity, year, color, type FROM info WHERE manufacturer = '" + manuf + "'";
////        System.out.println("Машины производителя " + manuf);
////        try (Statement statement = connection.createStatement();
////             ResultSet resultSet = statement.executeQuery(sql)) {
////            while (resultSet.next()) {
////                String name = resultSet.getString("name");
////                double cap = resultSet.getDouble("capacity");
////                int year = resultSet.getInt("year");
////                String color = resultSet.getString("color");
////                String type = resultSet.getString("type");
////                System.out.println("Название: " + name);
////                System.out.println("Объем двигателя: " + cap);
////                System.out.println("Год выпуска: " + year);
////                System.out.println("Цвет: " + color);
////                System.out.println("Тип авто: " + type);
////                System.out.println();
////            }
////
////
////        }
////    }
////
////    public static void colorFilter(Connection connection, Scanner input) throws SQLException{
////        System.out.print("Введите цвет: ");
////        String color = input.next();
////        String sql = "SELECT name, capacity, manufacturer, year, type FROM info WHERE color = '" + color + "'";
////        System.out.println("Машины расцветки " + color);
////        try(Statement statement = connection.createStatement();
////            ResultSet resultSet = statement.executeQuery(sql)) {
////            while (resultSet.next()) {
////                String name = resultSet.getString("name");
////                double cap = resultSet.getDouble("capacity");
////                String man = resultSet.getString("manufacturer");
////                int year = resultSet.getInt("year");
////                String type = resultSet.getString("type");
////                System.out.println("Производитель: " + man);
////                System.out.println("Название: " + name);
////                System.out.println("Объем двигателя: " + cap);
////                System.out.println("Год выпуска: " + year);
////                System.out.println("Тип: " + type);
////                System.out.println();
////            }
////        }
////
////    }
////
////    public static void capFilter(Connection connection, Scanner input) throws SQLException{
////        System.out.print("Введите объем двигателя: ");
////        double cap = input.nextDouble();
////        String sql = "SELECT name, manufacturer, year, color, type FROM info WHERE capacity = " + cap ;
////        try(Statement statement = connection.createStatement();
////            ResultSet resultSet = statement.executeQuery(sql)) {
////            while (resultSet.next()) {
////                String name = resultSet.getString("name");
////                String color = resultSet.getString("color");
////                String man = resultSet.getString("manufacturer");
////                int year = resultSet.getInt("year");
////                String type = resultSet.getString("type");
////                System.out.println("Производитель: " + man);
////                System.out.println("Название: " + name);
////                System.out.println("Год выпуска: " + year);
////                System.out.println("Цвет: " + color);
////                System.out.println("Тип: " + type);
////                System.out.println();
////            }
////        }
////
////    }
////    public static void typeFilter(Connection connection, Scanner input) throws SQLException{
////        System.out.println("В базе существует три типа автомобилей(седан, хэтчбек, универсал):");
////        System.out.print("Введите тип авто: ");
////        String type = input.next();
////        String sql = "SELECT name, manufacturer, capacity, year, color FROM info WHERE type =  '" +  type +  "'";
////        try(Statement statement = connection.createStatement();
////            ResultSet resultSet = statement.executeQuery(sql)){
////            while (resultSet.next()){
////                String name = resultSet.getString("name");
////                double cap = resultSet.getDouble("capacity");
////                String man = resultSet.getString("manufacturer");
////                int year = resultSet.getInt("year");
////                String color = resultSet.getString("color");
////                System.out.println("Производитель: " + man);
////                System.out.println("Название: " + name);
////                System.out.println("Объем двигателя: " + cap);
////                System.out.println("Год выпуска: " + year);
////                System.out.println("Цвет: " + color);
////                System.out.println();
////
////            }
////        }
////
////    }
////
////
//        CarDAO dao = new CarDAO();
////        Car c1 = getName(1);
//        System.out.println(c1.cname);
//    }
//}
//
//class CarDAO{
//    public Car getName(int id){
//        Car c = new Car();
//        c.id = id;
//
//        return c;
//    }
//}
//
//class Car{
//    int id;
//    String cname;
//}
