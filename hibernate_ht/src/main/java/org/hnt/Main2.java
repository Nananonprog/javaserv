package org.hnt;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hnt.entity.Student;

import java.util.List;

public class Main2 {
    public static void main(String[] args) {

        SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Student.class).buildSessionFactory();

//        try {
            Session session = factory.getCurrentSession();
            session.beginTransaction();

//            List<Student> students = session.createQuery("from Student").list();
//            List<Student> students = session.createQuery("from Student where name = 'Ольга'").list();
//            List<Student> students = session.createQuery("from Student where name = 'Ольга' and grade < 5").list();

//            for (Student st : students) {
//                System.out.println(st);
//            }
//        }finally {
//            factory.close();
//        }

    }


}
