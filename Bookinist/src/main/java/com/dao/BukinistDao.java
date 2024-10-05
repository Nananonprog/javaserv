package com.dao;

import com.entity.Bukinist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BukinistDao {

    private Connection conn;

    public BukinistDao(Connection conn) {
        this.conn = conn;
    }

    public boolean registerBukinist(Bukinist bukinist) {
        boolean flag = false;

        try{
            String sql = "INSERT INTO bukinist(full_name, dob, qualification, specialist, email, mobno, password) VALUES(?,?,?,?,?,?,?)";
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

    public List<Bukinist> getAllBukinists() {
        List<Bukinist> bukinists = new ArrayList<Bukinist>();

        Bukinist bukinist = null;

        try {
            String sql = "SELECT * FROM bukinist ORDER BY id DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                bukinist = new Bukinist();
                bukinist.setId(rs.getInt(1));
                bukinist.setFullName(rs.getString(2));
                bukinist.setDob(rs.getString(3));
                bukinist.setQualification(rs.getString(4));
                bukinist.setSpecialist(rs.getString(5));
                bukinist.setEmail(rs.getString(6));
                bukinist.setMobno(rs.getString(7));
                bukinist.setPassword(rs.getString(8));
                bukinists.add(bukinist);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return bukinists;
    }
    public Bukinist getBukinistsById(int id) {
        
        Bukinist bukinist = null;

        try {
            String sql = "SELECT * FROM bukinist WHERE id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                bukinist = new Bukinist();
                bukinist.setId(rs.getInt(1));
                bukinist.setFullName(rs.getString(2));
                bukinist.setDob(rs.getString(3));
                bukinist.setQualification(rs.getString(4));
                bukinist.setSpecialist(rs.getString(5));
                bukinist.setEmail(rs.getString(6));
                bukinist.setMobno(rs.getString(7));
                bukinist.setPassword(rs.getString(8));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return bukinist;
    }

    public boolean updateBukinist(Bukinist bukinist) {
        boolean flag = false;
        try {
            String sql = "UPDATE bukinist SET full_name=?, dob=?, qualification=?, specialist=?, email=?, mobno=?, password=? WHERE id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, bukinist.getFullName());
            ps.setString(2, bukinist.getDob());
            ps.setString(3, bukinist.getQualification());
            ps.setString(4, bukinist.getSpecialist());
            ps.setString(5, bukinist.getEmail());
            ps.setString(6, bukinist.getMobno());
            ps.setString(7, bukinist.getPassword());
            ps.setInt(8, bukinist.getId());

            int row = ps.executeUpdate();
            if(row == 1) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    public boolean deleteBukinist(int id) {
        boolean flag = false;
        try {
            String sql = "DELETE FROM bukinist WHERE id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);

            int row = ps.executeUpdate();
            if(row == 1) {
                flag = true;
            }
        }catch (Exception e) {
            e.printStackTrace();
        }

        return flag;
    }

    public Bukinist login(String email, String password){
        Bukinist bukinist = null;

        try{
            String sql = "SELECT * FROM bukinist WHERE email=? AND password=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                bukinist = new Bukinist();
                bukinist.setId(rs.getInt(1));
                bukinist.setFullName(rs.getString(2));
                bukinist.setDob(rs.getString(3));
                bukinist.setQualification(rs.getString(4));
                bukinist.setSpecialist(rs.getString(5));
                bukinist.setEmail(rs.getString(6));
                bukinist.setMobno(rs.getString(7));
                bukinist.setPassword(rs.getString(8));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return bukinist;
    }



    public int countBukinists(){
        int i = 0;
        try{
            String sql = "SELECT * FROM bukinist";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                i++;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return i;
    }

    public int countAppointment(){
        int i = 0;
        try{
            String sql = "SELECT * FROM appointment";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                i++;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return i;
    }

    public int countReader(){
        int i = 0;
        try{
            String sql = "SELECT * FROM reader_dtls";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                i++;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return i;
    }

    public int countAppointmentBukinistId(int bid){
        int i = 0;
        try{
            String sql = "SELECT * FROM appointment WHERE bukinist_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, bid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                i++;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return i;
    }

    public boolean checkOldPassword(int readerId, String oldPassword) {
        boolean flag = false;


        try {
            String sql = "SELECT * FROM bukinist WHERE id=? and password=?";
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
            String sql = "update bukinist set password=? where id=?";
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

    public boolean editBukinistProfile(Bukinist bukinist) {
        boolean flag = false;
        try {
            String sql = "UPDATE bukinist SET full_name=?, dob=?, qualification=?, specialist=?, email=?, mobno=? WHERE id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, bukinist.getFullName());
            ps.setString(2, bukinist.getDob());
            ps.setString(3, bukinist.getQualification());
            ps.setString(4, bukinist.getSpecialist());
            ps.setString(5, bukinist.getEmail());
            ps.setString(6, bukinist.getMobno());
            ps.setInt(7, bukinist.getId());

            int row = ps.executeUpdate();
            System.out.println("Hello " + row );
            if(row == 1) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }



    }

