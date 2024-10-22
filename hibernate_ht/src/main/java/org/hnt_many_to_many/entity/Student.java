package org.hnt_many_to_many.entity;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;
import org.hnt_many_to_many.entity.Subject;

@Entity
@Table(name = "stud")
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "fio")
    private String fio;

    @Column(name = "age")
    private int age;

    @ManyToMany(cascade= {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH, CascadeType.DETACH})
    @JoinTable( name = "stud_sub", joinColumns = @JoinColumn(name = "stud_id"), inverseJoinColumns = @JoinColumn(name = "subj_id")
    )
    private List<Subject> subjects;

    public Student() {}

    public Student(String fio, int age) {
        this.fio = fio;
        this.age = age;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFio() {
        return fio;
    }

    public void setFio(String fio) {
        this.fio = fio;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public List<Subject> getSubject() {
        return subjects;
    }

    public void setSubject(List<Subject> subject) {
        this.subjects = subject;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", fio='" + fio + '\'' +
                ", age=" + age +
                '}';
    }

    public void addSubjectToStudent(Subject subject) {
        if(subjects == null) {
            subjects = new ArrayList<Subject>();
        }
        subjects.add(subject);
    }
}
