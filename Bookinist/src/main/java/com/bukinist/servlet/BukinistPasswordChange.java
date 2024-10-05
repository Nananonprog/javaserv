package com.bukinist.servlet;

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

@WebServlet("/bukChangePassword")
public class BukinistPasswordChange extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int rid = Integer.parseInt(req.getParameter("rid"));
        String oldPassword = req.getParameter("oldPassword");
        String newPassword = req.getParameter("newPassword");

        BukinistDao dao = new BukinistDao(DBConnect.getConn());
        HttpSession session = req.getSession();

        if(dao.checkOldPassword(rid, oldPassword)){
            if(dao.changePassword(rid, newPassword)){
                session.setAttribute("succMsg", "Пароль изменен успешно");
                resp.sendRedirect("bukinist/edit_profile.jsp");

            }else{
                session.setAttribute("errorMsg", "Ошибка сервера");
                resp.sendRedirect("bukinist/edit_profile.jsp");
            }

        }else{
            session.setAttribute("errorMsg", "Пароль неверный");
            resp.sendRedirect("bukinist/edit_profile.jsp");
        }
    }
    }

