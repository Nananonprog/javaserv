package org.hnt;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hnt.entity.Student;

public class Main3 {
    public static void main(String[] args) {
        SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Student.class).buildSessionFactory();

        try{
            Session session = factory.getCurrentSession();
            session.beginTransaction();

            Student student = session.get(Student.class, 1);
//            student.setGrade(4);
                session.remove(student);

//            session.createQuery("update Student set grade = 5 where name = 'Илья'").executeUpdate();



            session.getTransaction().commit();
        }finally {
            factory.close();
        }


    }


}

