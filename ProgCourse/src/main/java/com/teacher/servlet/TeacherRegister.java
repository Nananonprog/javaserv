package com.teacher.servlet;

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

@WebServlet("/teacher_register")
public class TeacherRegister extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            String fullName = req.getParameter("fullname");
            String email = req.getParameter("email");
            String password = req.getParameter("password");

            Teacher teacher = new Teacher(fullName, email, password);
            TeacherDao teacherDao = new TeacherDao(DBConnect.getConn());

            HttpSession session = req.getSession();
            boolean f = teacherDao.registerTeacher(teacher);

            if (f){
                session.setAttribute("suc1Msg", "Успешная регистрация");
                resp.sendRedirect("signup1.jsp");
            }else{
                session.setAttribute("error1Msg", "Ошибка регистрации");
                resp.sendRedirect("signup1.jsp");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
