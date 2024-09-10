package org.example.userform;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/editScreen")
public class EditScreen extends HttpServlet {

    private static final String query = "SELECT g_login,g_email, g_pass FROM user WHERE id = ?";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        int id = Integer.parseInt(req.getParameter("id"));
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        out.println("<html><head><link rel='stylesheet' href='css/style.css'></head><body><div class='list'>");
        try (Connection connection = DriverManager.getConnection("jdbc:mysql:///game", "root", "Zelana_03");
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
            out.println("<form action='editUrl?id="+ id +"' method='post'>");
            out.println("<table>");
            out.println("<tr>");
            out.println("<td>Gamer Login</td>");
            out.println("<td><input type='text' name='g_login' value='"+ resultSet.getString(1) +"'></td>");
            out.println("</tr>");
            out.println("<tr>");
            out.println("<td>Gamer email</td>");
            out.println("<td><input type='text' name='g_email' value='"+ resultSet.getString(2) +"'></td>");
            out.println("</tr>");
            out.println("<tr>");
            out.println("<td>Gamer password</td>");
            out.println("<td><input type='text' name='g_pass' value='"+ resultSet.getString(3) +"'></td>");
            out.println("</tr>");
            out.println("<tr>");
            out.println("<td><input type='submit' value='edit' class='submit'></td>");
            out.println("<td><input type='reset' value='cancel' class='reset'></td>");
            out.println("</tr>");
            out.println("</table>");
            out.println("</form>");
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<h2>" + e.getMessage() + "</h2>");
        }
        out.println("<br><a href='main.html'>Главная</a>");
        out.println("</div></body></html>");
    }
    }

