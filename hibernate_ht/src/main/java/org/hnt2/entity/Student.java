package org.hnt2.entity;

import jakarta.persistence.*;

import javax.swing.*;

@Entity
@Table(name = "student_lnk")
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private int id;

    @Column(name = "name")
    private String name;


    @Column(name = "surname")
    private String surname;

    @Column(name = "special")
    private String special;

    @Column(name = "groupp")
    private String groupp;

    @Column(name = "grade")
    private int grade;

    @ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.DETACH, CascadeType.REFRESH, CascadeType.MERGE})
    @JoinColumn(name = "cafedra_id")
    private Cafedra cafedra;

    public Student() {}

    public Student(String name, String surname, String special, String groupp, int grade) {
        this.name = name;
        this.surname = surname;
        this.special = special;
        this.groupp = groupp;
        this.grade = grade;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", special='" + special + '\'' +
                ", groupp='" + groupp + '\'' +
                ", grade=" + grade +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getSpecial() {
        return special;
    }

    public void setSpecial(String special) {
        this.special = special;
    }

    public String getGroupp() {
        return groupp;
    }

    public void setGroupp(String groupp) {
        this.groupp = groupp;
    }

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }

    public Cafedra getCafedra() {
        return cafedra;
    }

    public void setCafedra(Cafedra cafedra) {
        this.cafedra = cafedra;
    }
}

