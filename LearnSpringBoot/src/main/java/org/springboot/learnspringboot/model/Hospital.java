package org.springboot.learnspringboot.model;

public class Hospital {
    private String fio;
    private String spec;
    private String email;
    private String phone;

    public Hospital(){}
    public Hospital(String fio, String spec, String email, String phone) {
        this.fio = fio;
        this.spec = spec;
        this.email = email;
        this.phone = phone;
    }

    public String getFio() {
        return fio;
    }

    public void setFio(String fio) {
        this.fio = fio;
    }

    public String getSpec() {
        return spec;
    }

    public void setSpec(String spec) {
        this.spec = spec;
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
}
