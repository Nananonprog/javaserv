package com.dao;

import com.entity.Reader;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ReaderDao {
    private Connection conn;

    public ReaderDao(Connection conn) {
        this.conn = conn;

    }

    public boolean register(Reader r) {
        boolean flag = false;

        try {
            String sql = "insert into reader_dtls(full_name, email, password) values(?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,r.getName());
            ps.setString(2,r.getEmail());
            ps.setString(3,r.getPassword());

            int row = ps.executeUpdate();
            if (row == 1) {
                flag = true;
            }
        }catch (Exception e) {
            e.printStackTrace();
        }

        return flag;

    }

    public Reader login(String email, String password) {
        Reader reader = null;

        try{
            String sql = "select * from reader_dtls where email=? and password=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,email);
            ps.setString(2,password);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                reader = new Reader();
                reader.setId(rs.getInt(1));
                reader.setName(rs.getString(2));
                reader.setEmail(rs.getString(3));
                reader.setPassword(rs.getString(4));

            }
        }catch (Exception e) {
            e.printStackTrace();
        }


        return reader;
    }

    public boolean checkOldPassword(int readerId, String oldPassword) {
        boolean flag = false;


        try {
            String sql = "SELECT * FROM reader_dtls WHERE id=? and password=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,readerId);
            ps.setString(2,oldPassword);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                flag = true;
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }


    public boolean changePassword(int readerId, String newPassword) {
        boolean flag = false;

        try {
            String sql = "update reader_dtls set password=? where id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,newPassword);
            ps.setInt(2,readerId);
            int row = ps.executeUpdate();
            if(row == 1) {
                flag = true;
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }
}
