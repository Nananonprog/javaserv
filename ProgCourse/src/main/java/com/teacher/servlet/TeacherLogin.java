package com.teacher.servlet;

import com.dao.StudentDao;
import com.dao.TeacherDao;
import com.db.DBConnect;
import com.entity.Teacher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/teacLogin")
public class TeacherLogin extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        HttpSession session = req.getSession();
        TeacherDao teacherDao = new TeacherDao(DBConnect.getConn());
        Teacher teacher = teacherDao.loginTeacher(email, password);

        if(teacher != null) {
            session.setAttribute("teachObj", teacher);
            resp.sendRedirect("index.jsp");
        }else{
            session.setAttribute("errorMsg", "Некорректный email или пароль");
            resp.sendRedirect("teacher_login.jsp");
        }
    }
}
