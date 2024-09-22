package com.admin.servlet;

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

@WebServlet("/addBukinist")
public class AddBukinist extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {

            String fullName = req.getParameter("full_name");
            String dob = req.getParameter("dob");
            String qualification = req.getParameter("qualification");
            String spec = req.getParameter("spec");
            String email = req.getParameter("email");
            String phone = req.getParameter("mobno");
            String password = req.getParameter("password");

            Bukinist bukinist = new Bukinist(fullName, dob, qualification, spec, email, phone, password);
            BukinistDao dao = new BukinistDao(DBConnect.getConn());
            HttpSession session = req.getSession();

            if (dao.registerBukinist(bukinist)) {
                session.setAttribute("succMsg", "Букинист добавлен успешно");
                resp.sendRedirect("admin/bukinist.jsp");
            }else {
                session.setAttribute("errorMsg", "Ошибка сервера");
                resp.sendRedirect("admin/bukinist.jsp");

            }

        }catch (Exception e) {
            e.printStackTrace();
        }
    }
}
