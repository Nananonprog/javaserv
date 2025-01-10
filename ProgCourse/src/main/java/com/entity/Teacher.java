package com.entity;

public class Teacher {
    private int t_id;
    private String full_name;
    private String email;
    private String password;

    public Teacher() {}

    public Teacher(int t_id, String full_name, String email, String password) {
        this.t_id = t_id;
        this.full_name = full_name;
        this.email = email;
        this.password = password;
    }

    public Teacher(String full_name, String email, String password) {
        this.full_name = full_name;
        this.email = email;
        this.password = password;
    }

    public int getT_id() {
        return t_id;
    }

    public void setT_id(int t_id) {
        this.t_id = t_id;
    }

    public String getName() {
        return full_name;
    }

    public void setName(String full_name) {
        this.full_name = full_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
