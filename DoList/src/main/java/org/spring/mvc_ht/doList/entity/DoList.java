package org.spring.mvc_ht.doList.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "listing")
public class DoList {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "title")
    private String title;
    @Column(name = "importance")
    private String importance;
    @Column(name = "deadline")
    private String deadline;

    public DoList() {}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImportance() {
        return importance;
    }

    public void setImportance(String importance) {
        this.importance = importance;
    }

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }

    @Override
    public String toString() {
        return "DoList{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", importance='" + importance + '\'' +
                ", deadline='" + deadline + '\'' +
                '}';
    }
}
