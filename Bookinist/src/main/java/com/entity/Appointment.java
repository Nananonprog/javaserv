package com.entity;

public class Appointment {
    private int id;
    private int readerId;
    private String fullName;
    private String gender;
    private String age;
    private String appointDate;
    private String email;
    private String phone;
    private String lect;
    private int bukinistId;
    private String hobby;
    private String status;

    public Appointment() {}

    public Appointment(int readerId, String fullName, String gender, String age, String appointDate, String email, String phone, String lect, int bukinistId, String hobby, String status) {
        this.readerId = readerId;
        this.fullName = fullName;
        this.gender = gender;
        this.age = age;
        this.appointDate = appointDate;
        this.email = email;
        this.phone = phone;
        this.lect = lect;
        this.bukinistId = bukinistId;
        this.hobby = hobby;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getReaderId() {
        return readerId;
    }

    public void setReaderId(int readerId) {
        this.readerId = readerId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getAppointDate() {
        return appointDate;
    }

    public void setAppointDate(String appointDate) {
        this.appointDate = appointDate;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getLect() {
        return lect;
    }

    public void setLect(String lect) {
        this.lect = lect;
    }

    public int getBukinistId() {
        return bukinistId;
    }

    public void setBukinistId(int bukinistId) {
        this.bukinistId = bukinistId;
    }

    public String getHobby() {
        return hobby;
    }

    public void setHobby(String hobby) {
        this.hobby = hobby;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
