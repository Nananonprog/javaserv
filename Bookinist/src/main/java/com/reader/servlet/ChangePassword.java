package com.reader.servlet;

import com.dao.BukinistDao;
import com.dao.ReaderDao;
import com.db.DBConnect;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/readerChangePassword")
public class ChangePassword extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int rid = Integer.parseInt(req.getParameter("rid"));
        String oldPassword = req.getParameter("oldPassword");
        String newPassword = req.getParameter("newPassword");

        ReaderDao readerDao = new ReaderDao(DBConnect.getConn());
        HttpSession session = req.getSession();

        if(readerDao.checkOldPassword(rid, oldPassword)){
            if(readerDao.changePassword(rid, newPassword)){
                session.setAttribute("succMsg", "Пароль изменен успешно");
                resp.sendRedirect("change_password.jsp");

            }else{
                session.setAttribute("errorMsg", "Ошибка сервера");
                resp.sendRedirect("change_password.jsp");
            }

        }else{
            session.setAttribute("errorMsg", "Пароль неверный");
            resp.sendRedirect("change_password.jsp");
        }
    }
}
