package com.admin.servlet;

import com.dao.BukinistDao;
import com.db.DBConnect;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/deleteBukinist")
public class DeleteBukinist extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        BukinistDao dao = new BukinistDao(DBConnect.getConn());
        HttpSession session = req.getSession();

        if(dao.deleteBukinist(id)){
            session.setAttribute("succMsg", "Букинист удален успешно");
            resp.sendRedirect("admin/bukinist.jsp");

        }else{
            session.setAttribute("errorMsg", "Ошибка сервера");
            resp.sendRedirect("admin/bukinist.jsp");
        }
    }
}
