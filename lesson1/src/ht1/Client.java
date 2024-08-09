package ht1;

import java.io.*;
import java.net.InetAddress;
import java.net.Socket;
import java.sql.Array;

public class Client {
    public static void main(String[] args) throws IOException {
        Socket socket = new Socket("localhost", 5000);

        PrintWriter out = new PrintWriter(socket.getOutputStream(), true);
        BufferedReader in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
        BufferedReader consoleInput = new BufferedReader(new InputStreamReader(System.in));

        System.out.println("Добро пожаловать на клиентскую сторону");
        System.out.println("Подключение к серверу...");
        System.out.println("Соединение установлено");

        while (true) {
            System.out.println("Хотите получить цитату дня: (Yes/No) ?");
            String response = consoleInput.readLine();
            out.println(response);

            String quote = in.readLine();
            if (quote != null) {
                System.out.println("Сервер отправил мне цитату: " + quote);
            }

            if (response.equalsIgnoreCase("No")) {
                System.out.println("Спасибо, что посетили наш ресурс!");
                break;
            }
        }

        socket.close();
    }
}


