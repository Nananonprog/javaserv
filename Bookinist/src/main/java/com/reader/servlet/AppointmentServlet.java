package com.reader.servlet;

import com.dao.AppointmentDAO;
import com.db.DBConnect;
import com.entity.Appointment;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/addAppointment")
public class AppointmentServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int readerId = Integer.parseInt(req.getParameter("readerid"));
        String fullName = req.getParameter("fullname");
        String gender = req.getParameter("gender");
        String age = req.getParameter("age");
        String appointDate = req.getParameter("appoint_date");
        String email = req.getParameter("email");
        String phone = req.getParameter("number");
        String lect =  req.getParameter("lect");
        int bukinistId = Integer.parseInt(req.getParameter("buk"));
        String hobby = req.getParameter("hobby");

        Appointment ap = new Appointment(readerId, fullName, gender, age, appointDate, email, phone,lect,bukinistId, hobby, "В ожидании");

        AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
        HttpSession session = req.getSession();

        if(dao.addAppointment(ap)){
            session.setAttribute("succMsg", "Назначение создано успешно");
            resp.sendRedirect("reader_appointment.jsp");
        }else {
            session.setAttribute("errorMsg", "Ошибка сервера");
            resp.sendRedirect("reader_appointment.jsp");

        }

    }
}
