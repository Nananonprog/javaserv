package org.hnt.entity;

import jakarta.persistence.*;

import javax.xml.namespace.QName;

@Entity
@Table(name = "student")
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
}
