package ht1;

import java.io.*;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;

public class Server extends Thread{
    public static void main(String[] args) throws IOException {
        String[] quotes = {"Начинать всегда стоит с того, что сеет сомнения.", "80% успеха - это появиться в нужном месте в нужное время.", "День без улыбки — потерянный день"};
        ServerSocket serverSocket = new ServerSocket(5000);
        System.out.println("Сервер запущен. Ожидание клиента...");

        Socket clientSocket = serverSocket.accept();
        System.out.println("Клиент подключен.");

        PrintWriter out = new PrintWriter(clientSocket.getOutputStream(), true);
        BufferedReader in = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));

        while (true) {
            String input = in.readLine();
            if (input.equalsIgnoreCase("Yes")) {
                int randomIndex = (int) (Math.random() * quotes.length);
                out.println(quotes[randomIndex]);
            } else if (input.equalsIgnoreCase("No")) {

                break;
            }
        }

        serverSocket.close();
        clientSocket.close();
    }
}

