package com.dao;

import com.entity.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class StudentDao {
    private Connection conn;

    public StudentDao(Connection conn) {
        this.conn = conn;
    }

    public boolean registerStudent(Student st) {
        boolean flag = false;

        try{
            String sql = "insert into student_dtls(full_name, email, password) values(?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, st.getName());
            ps.setString(2, st.getEmail());
            ps.setString(3, st.getPassword());

            int row = ps.executeUpdate();
            if (row == 1) {
                flag = true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return flag;
    }

    public Student loginStudent(String email, String password) {
        Student st = null;

        try{
            String sql = "SELECT * FROM student_dtls WHERE email = ? AND password = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                st = new Student();
                st.setSt_id(rs.getInt(1));
                st.setName(rs.getString(2));
                st.setEmail(rs.getString(3));
                st.setPassword(rs.getString(4));

            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return st;
    }

}
