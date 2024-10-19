package org.hnt;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hnt.entity.Student;

public class Main {
    public static void main(String[] args) {
        SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Student.class).buildSessionFactory();

        try{
            Session session = factory.getCurrentSession();
            Student student = new Student("Илья", "Вартанов", "Программирование", "ОС-21", 3);
            session.beginTransaction();
            session.persist(student);
            System.out.println(student);


            int myId = student.getId();
            session = factory.getCurrentSession();
            session.beginTransaction();
            Student student2 = session.get(Student.class, myId);
            session.getTransaction().commit();
            System.out.println(student2);

        } finally {
            factory.close();
        }
    }
}
