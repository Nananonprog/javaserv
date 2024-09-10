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
@WebServlet("/deleteUrl")
public class DeleteServlet extends HttpServlet {
    private static final String query = "DELETE FROM user WHERE id=?";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        int id = Integer.parseInt(req.getParameter("id"));

        try{
            Class.forName("com.mysql.jdbc.Driver");
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        out.println("<html><head><link rel = 'stylesheet' href='css/style.css'></head><body><div class ='list'>");
        try (Connection connection = DriverManager.getConnection("jdbc:mysql:///game", "root", "Zelana_03");
             PreparedStatement ps = connection.prepareStatement(query))  {
            ps.setInt(1, id);
            int row = ps.executeUpdate();

            if (row == 1) {
                out.println("<h2>User has been deleted succesfully!</h2>");
            }else {
                out.println("<h2>Deletion has been canceled!</h2>");
            }
        }catch (SQLException e){
            e.printStackTrace();
            out.println("<h2>" + e.getMessage() + "</h2>");
        }
        out.println("<br><a href= 'main.html'>Главная</a>");
        out.println("<br><a href='userList'>UserList</a>");
        out.println("</div></body></html>");
    }
    }

