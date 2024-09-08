package org.example.userform;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/reg")
public class UserReg extends HttpServlet {
    private static final String query = "INSERT INTO user(g_login,g_email, g_pass) VALUES(?,?,?) ";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
//            throw new RuntimeException(e);
            e.printStackTrace();
        }
        String g_login = req.getParameter("g_login");
        String g_email = req.getParameter("g_email");
        String g_pass = req.getParameter("g_pass");

        try (Connection connection = DriverManager.getConnection("jdbc:mysql:///game", "root", "Zelana_03");

             PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setString(1, g_login);
            ps.setString(2, g_email);
            ps.setString(3, g_pass);
            int row = ps.executeUpdate();
            out.println("<html><head><link rel = 'stylesheet' href='css/style.css'></head><body><div class ='list'>");
            if (row == 1) {
                out.println("<h2>User has been registered successfully</h2>");
            } else {
                out.println("<h2>Something went wrong</h2>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<h2>" + e.getMessage() + "</h2>");
        }
        out.println("<br><a href='main.html'>Main</a>");
        out.println("<br><a href='userList'>User List</a>");
        out.println("</div></body></html>");
    }
}