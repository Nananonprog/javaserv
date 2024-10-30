package com.dao;


import com.entity.Student;
import com.entity.Teacher;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class TeacherDao{
    private Connection conn;

    public TeacherDao(Connection conn) {
        this.conn = conn;
    }

    public boolean registerTeacher(Teacher t) {
        boolean flag = false;

        try{
            String sql = "insert into teacher_dtls(full_name, email, password) values(?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, t.getName());
            ps.setString(2, t.getEmail());
            ps.setString(3, t.getPassword());

            int row = ps.executeUpdate();
            if (row == 1) {
                flag = true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return flag;
    }
    public Teacher loginTeacher(String email, String password) {
        Teacher tch = null;

        try{
            String sql = "SELECT * FROM teacher_dtls WHERE email = ? AND password = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                tch = new Teacher();
                tch.setT_id(rs.getInt(1));
                tch.setName(rs.getString(2));
                tch.setEmail(rs.getString(3));
                tch.setPassword(rs.getString(4));

            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return tch;
    }

}
