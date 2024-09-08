package org.example.userform;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/userList")
public class UserList extends HttpServlet {

    private static final String query = "SELECT * FROM user";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        resp.setContentType("text/html");

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch(ClassNotFoundException e){
            e.printStackTrace();
        }

        try(Connection con = DriverManager.getConnection("jdbc:mysql:///game", "root", "Zelana_03");
            PreparedStatement ps = con.prepareStatement(query)){
            ResultSet rs = ps.executeQuery();

            out.println("<html><head><link rel = 'stylesheet' href = 'css/style.css'></head><body><div class = 'list'>");
            out.println("<table><tr>");
            out.println("<th>Gamer ID</th>");
            out.println("<th>Login</th>");
            out.println("<th>Email</th>");
            out.println("<th>Password</th></tr>");

            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getInt(1) + "</td>");
                out.println("<td>" + rs.getString(2) + "</td>");
                out.println("<td>" + rs.getString(3) + "</td>");
                out.println("<td>" + rs.getString(4) + "</td></tr>");
            }
            out.println("</table>");

        }catch (SQLException e){
            e.printStackTrace();
            out.println("<h2>" + e.getMessage() + "</h2>");
        }
        out.println("<br><a href=main.html></a>");
        out.println("</div></body></html>");

    }


}
