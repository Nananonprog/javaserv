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

@WebServlet("/editUrl")
public class EditServlet extends HttpServlet {
    private static final String query = "UPDATE user SET g_login=?, g_email=?, g_pass=? WHERE id=?";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        int id = Integer.parseInt(req.getParameter("id"));
        String g_login = req.getParameter("g_login");
        String g_email = req.getParameter("g_email");
        String g_pass = req.getParameter("g_pass");
        try{
            Class.forName("com.mysql.jdbc.Driver");
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        out.println("<html><head><link rel = 'stylesheet' href='css/style.css'></head><body><div class ='list'>");
        try (Connection connection = DriverManager.getConnection("jdbc:mysql:///game", "root", "Zelana_03");
             PreparedStatement ps = connection.prepareStatement(query))  {
            ps.setString(1, g_login);
            ps.setString(2, g_email);
            ps.setString(3, g_pass);
            ps.setInt(4, id);
            int row = ps.executeUpdate();
            if (row == 1) {
                out.println("<h2>Edition has been done succesfully!</h2>");
            }else {
                out.println("<h2>Edition has been failed!</h2>");
            }
        }catch (SQLException e){
            e.printStackTrace();
            out.println("<h2>" + e.getMessage() + "</h2>");
        }
        out.println("<br><a href= 'main.html'>Главная</a>");
        out.println("<br><a href='userList'>Список книг</a>");
        out.println("</div></body></html>");

    }

            }

