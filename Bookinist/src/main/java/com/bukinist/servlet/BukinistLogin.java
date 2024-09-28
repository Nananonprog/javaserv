package com.bukinist.servlet;

import com.dao.BukinistDao;
import com.db.DBConnect;
import com.entity.Bukinist;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/bukLogin")
public class BukinistLogin extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        HttpSession session = req.getSession();

        BukinistDao bukinistDao = new BukinistDao(DBConnect.getConn());
        Bukinist bukinist = bukinistDao.login(email, password);

        if(bukinist != null) {
            session.setAttribute("bukObj", bukinist);
            resp.sendRedirect("bukinist/index.jsp");
        }else {
            session.setAttribute("errorMsg", "Некорректный email или пароль");
            resp.sendRedirect("buk_login.jsp");
        }
    }
}
