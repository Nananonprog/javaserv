package org.hnt2;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hnt2.entity.Student;
import org.hnt2.entity.Cafedra;

public class Main {
    public static void main(String[] args) {
        SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Student.class).addAnnotatedClass(Cafedra.class).buildSessionFactory();

        Session session = null;
    try{
        session = factory.getCurrentSession();
        session.beginTransaction();
//        Cafedra cafedra = new Cafedra("Информационные технологии", "+79623145461", "poteam@gmail.com");
//        Student student = new Student("Ирина", "Драгунова", "Разработка ПО", "ПОб-22", 5);
//        Student student2 = new Student("Олег", "Климов", "Разработка ПО", "ПОб-22", 5);

//        cafedra.addStudentToCafedra(student);
//        cafedra.addStudentToCafedra(student2);


//        cafedra = session.get(Cafedra.class, 1);
//        System.out.println(cafedra);
//        System.out.println(cafedra.getStudents());
        Student student = session.get(Student.class, 1);

//        session.persist(cafedra);
        session.remove(student);
        session.getTransaction().commit();
    }finally {
        session.close();
        factory.close();
    }

    }

}
