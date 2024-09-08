package jdbc.BankingManagementSystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Scanner;

public class BankingApp {
    private static final String url = "jdbc:mysql://localhost:3306/banking_system";
    private static final String username = "root";
    private static final String password = "Zelana_03";

    public static void main(String[] args) {
        try {
            Connection connection = DriverManager.getConnection(url, username,password);
            Scanner input = new Scanner(System.in);

            User user = new User(connection, input);
            Accounts accounts = new Accounts(connection, input);
            AccountManager accountManager = new AccountManager(connection, input);

            String email;
            long account_number;
            while(true){
                System.out.println("*** ДОБРО ПОЖАЛОВАТЬ В БАНКОВСКУЮ СИСТЕМУ ***\n");
                System.out.println("1. Регистрация");
                System.out.println("2. Авторизация");
                System.out.println("3. Выход");
                System.out.println("Ваш выбор: ");

                int choice1 = input.nextInt();
                switch (choice1){
                    case 1:
                        user.register();
                        break;
                    case 2:
                        email = user.login();
                        if(email != null){
                            System.out.println("\nПользователь вошёл в систему");
                            if(!accounts.account_exists(email)){
                                System.out.println("1. Открытие нового банковского счёта");
                                System.out.println("2. Выход");
                                System.out.print("Ваш выбор: ");
                                if(input.nextInt() == 1){
                                    account_number = accounts.open_account(email);
                                    System.out.println("Аккаунт создан успешно!\nВаш номер счета: " + account_number);
                                }else{

                                    break;
                                }

                            }
                            account_number = accounts.getAccountNumber(email);
                            int choice2 = 0;
                            while(choice2 != 5){
                                System.out.println("\n1. Снятие личных средств");
                                System.out.println("2. Займ кредитнх средств");
                                System.out.println("3. Перевод денег");
                                System.out.println("4. Проверка баланса");
                                System.out.println("5. Выход");
                                System.out.print("Ваш выбор: ");
                                choice2 = input.nextInt();
                                switch (choice2){
                                    case 1:
                                        accountManager.debitMoney(account_number);
                                        break;
                                    case 2:
                                        accountManager.creditMoney(account_number);
                                        break;
                                    case 3:
                                        accountManager.transferMoney(account_number);
                                        break;
                                    case 4:
                                        accountManager.getBalance(account_number)
                                        break;
                                    case 5:
                                        break;
                                    default:
                                        System.out.println("Такого варианта нет!");
                                }
                            }
                        }else {
                            System.out.println("Некорректный адрес почты или пароль!");
                        }
                        break;
                    case 3:
                        System.out.println("СПАСИБО ЗА ИСПОЛЬЗОВАНИЕ БАНКОВСКОЙ СИСТЕМЫ");
                        System.out.println("Выход из системы");
                        return;
                    default:
                        System.out.println("Такого варианта нет");
                        break;
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
