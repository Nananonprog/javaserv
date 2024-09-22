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

@WebServlet("/readerLogin")
public class ReaderLogin extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        HttpSession session = req.getSession();
        ReaderDao readDao = new ReaderDao(DBConnect.getConn());
        Reader reader = readDao.login(email,password);

        if(reader != null){
            session.setAttribute("readerObj", reader);
            resp.sendRedirect("index.jsp");
        }else{
            session.setAttribute("errorMsg","Некорректный email или пароль" );
            resp.sendRedirect("reader_login.jsp");
        }

    }
}
