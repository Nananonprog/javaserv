package com.dao;

import com.entity.Bukinist;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class BukinistDao {

    private Connection conn;

    public BukinistDao(Connection conn) {
        this.conn = conn;
    }

    public boolean registerBukinist(Bukinist bukinist) {
        boolean flag = false;

        try{
            String sql = "insert into bukinist(full_name, dob, qualification, specialist, email, mobno, password) values(?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, bukinist.getFullName());
            ps.setString(2, bukinist.getDob());
            ps.setString(3, bukinist.getQualification());
            ps.setString(4, bukinist.getSpecialist());
            ps.setString(5, bukinist.getEmail());
            ps.setString(6, bukinist.getMobno());
            ps.setString(7, bukinist.getPassword());

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

