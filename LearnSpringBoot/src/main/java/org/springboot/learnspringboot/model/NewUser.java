package org.springboot.learnspringboot.model;

public class NewUser {
    private String name;
    private int age;
    private String email;
    private String diagnosis;
    private String phone;
    private String appointment;

    public NewUser() {}

    public NewUser(String name, int age, String email, String diagnosis, String phone, String appointment) {
        this.name = name;
        this.age = age;
        this.email = email;
        this.diagnosis = diagnosis;
        this.phone = phone;
        this.appointment = appointment;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDiagnosis() {
        return diagnosis;
    }

    public void setDiagnosis(String diagnosis) {
        this.diagnosis = diagnosis;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAppointment() {
        return appointment;
    }

    public void setAppointment(String appointment) {
        this.appointment = appointment;
    }
}
