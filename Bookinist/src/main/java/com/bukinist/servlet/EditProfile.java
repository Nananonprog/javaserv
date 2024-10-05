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

@WebServlet("/bukUpdateProfile")
public class EditProfile extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String fullName = req.getParameter("full_name");
            String dob = req.getParameter("dob");
            String qualification = req.getParameter("qualification");
            String spec = req.getParameter("spec");
            String email = req.getParameter("email");
            String phone = req.getParameter("mobno");

            int id = Integer.parseInt(req.getParameter("id"));

            Bukinist bukinist = new Bukinist(id,fullName, dob, qualification, spec, email, phone, "");
            BukinistDao dao = new BukinistDao(DBConnect.getConn());
            HttpSession session = req.getSession();

            if(dao.editBukinistProfile(bukinist)){
                Bukinist updateBukinist = dao.getBukinistsById(id);
                session.setAttribute("succMsg", "Сотрудник обновлен успешно");
                session.setAttribute("bukObj", updateBukinist);
                resp.sendRedirect("bukinist/edit_profile.jsp");
            }else{
                session.setAttribute("errorMsg", "Ошибка сервера");
                resp.sendRedirect("bukinist/edit_profile.jsp");
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
    }
}
