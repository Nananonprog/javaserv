package com.dao;

import com.entity.Appointment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AppointmentDAO {
    private Connection conn;

    public AppointmentDAO(Connection conn){
        this.conn = conn;
    }

    public boolean addAppointment(Appointment appointment) {
        boolean flag = false;

        try{
            String sql = "insert into appointment (reader_id, fullname, gender, age, appoint_date, email, phno, lect, bukinist_id, hobby, status) values(?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, appointment.getReaderId());
            ps.setString(2, appointment.getFullName());
            ps.setString(3, appointment.getGender());
            ps.setString(4, appointment.getAge());
            ps.setString(5, appointment.getAppointDate());
            ps.setString(6, appointment.getEmail());
            ps.setString(7, appointment.getPhone());
            ps.setString(8, appointment.getLect());
            ps.setInt(9,appointment.getBukinistId());
            ps.setString(10, appointment.getHobby());
            ps.setString(11, appointment.getStatus());

            int row = ps.executeUpdate();
            if(row == 1) {
                flag = true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return flag;
     }

     public List<Appointment> getAllAppointmentsByLoginUser(int readerId) {
        List<Appointment> appointments = new ArrayList<Appointment>();
        Appointment app =  null;

        try {
            String sql = "select * from appointment where reader_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, readerId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                app = new Appointment();
                app.setId(rs.getInt(1));
                app.setReaderId(rs.getInt(2));
                app.setFullName(rs.getString(3));
                app.setGender(rs.getString(4));
                app.setAge(rs.getString(5));
                app.setAppointDate(rs.getString(6));
                app.setEmail(rs.getString(7));
                app.setPhone(rs.getString(8));
                app.setLect(rs.getString(9));
                app.setBukinistId(rs.getInt(10));
                app.setHobby(rs.getString(11));
                app.setStatus(rs.getString(12));
                appointments.add(app);

            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return appointments;

     }

    public List<Appointment> getAllAppointmentsByBukinistLogin(int bukinistId) {
        List<Appointment> appointments = new ArrayList<Appointment>();
        Appointment app =  null;

        try {
            String sql = "select * from appointment where bukinist_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, bukinistId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                app = new Appointment();
                app.setId(rs.getInt(1));
                app.setReaderId(rs.getInt(2));
                app.setFullName(rs.getString(3));
                app.setGender(rs.getString(4));
                app.setAge(rs.getString(5));
                app.setAppointDate(rs.getString(6));
                app.setEmail(rs.getString(7));
                app.setPhone(rs.getString(8));
                app.setLect(rs.getString(9));
                app.setBukinistId(rs.getInt(10));
                app.setHobby(rs.getString(11));
                app.setStatus(rs.getString(12));
                appointments.add(app);

            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return appointments;

    }
    public Appointment getAppointmentsById(int id) {
        Appointment app =  null;

        try {
            String sql = "select * from appointment where id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                app = new Appointment();
                app.setId(rs.getInt(1));
                app.setReaderId(rs.getInt(2));
                app.setFullName(rs.getString(3));
                app.setGender(rs.getString(4));
                app.setAge(rs.getString(5));
                app.setAppointDate(rs.getString(6));
                app.setEmail(rs.getString(7));
                app.setPhone(rs.getString(8));
                app.setLect(rs.getString(9));
                app.setBukinistId(rs.getInt(10));
                app.setHobby(rs.getString(11));
                app.setStatus(rs.getString(12));

            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return app;

    }

    public boolean updateCommentStatus(int id, int bukinist_id, String comment) {
        boolean flag = false;
        try{
            String sql = "update appointment set status = ? where id = ? AND bukinist_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, comment);
            ps.setInt(2, id);
            ps.setInt(3, bukinist_id);
            int row = ps.executeUpdate();
            if (row==1){
                flag = true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return flag;
    }

    public List<Appointment> getAllAppointment() {
        List<Appointment> appointments = new ArrayList<Appointment>();
        Appointment app =  null;

        try {
            String sql = "select * from appointment ORDER BY id DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                app = new Appointment();
                app.setId(rs.getInt(1));
                app.setReaderId(rs.getInt(2));
                app.setFullName(rs.getString(3));
                app.setGender(rs.getString(4));
                app.setAge(rs.getString(5));
                app.setAppointDate(rs.getString(6));
                app.setEmail(rs.getString(7));
                app.setPhone(rs.getString(8));
                app.setLect(rs.getString(9));
                app.setBukinistId(rs.getInt(10));
                app.setHobby(rs.getString(11));
                app.setStatus(rs.getString(12));
                appointments.add(app);

            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return appointments;

    }

}
