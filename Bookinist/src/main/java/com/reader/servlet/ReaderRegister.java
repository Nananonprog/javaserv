package com.reader.servlet;

import com.dao.ReaderDao;
import com.db.DBConnect;
import com.entity.Reader;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/reader_register")
public class ReaderRegister extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String fullName = req.getParameter("fullname");
            String email = req.getParameter("email");
            String password = req.getParameter("password");

            Reader reader = new Reader(fullName, email, password);
            ReaderDao readerDao = new ReaderDao(DBConnect.getConn());

            HttpSession session = req.getSession();
            boolean f = readerDao.register(reader);
            if (f) {
                session.setAttribute("sucMsg", "Читатель зарегистрирован");
                resp.sendRedirect("signup.jsp");
            }else{
                session.setAttribute("errorMsg", "Ошибка регистрации");
                resp.sendRedirect("signup.jsp");

                }

        }catch (Exception e) {
            e.printStackTrace();
        }
    }
}
