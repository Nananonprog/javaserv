package org.hnt_many_to_many;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hnt_many_to_many.entity.Student;
import org.hnt_many_to_many.entity.Subject;

public class Main {
    public static void main(String[] args) {
        SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Student.class).addAnnotatedClass(Subject.class).buildSessionFactory();
        Session session = null;
        try{
            session = factory.getCurrentSession();
//            Subject subject1 = new Subject("Программирование");
//            Subject subject2 = new Subject("Биоифнорматика");
//            Subject subject3 = new Subject("Электротехника");

//            Student student = new Student("Дименко Влада Александровна", 21);
//            Student student2 = new Student("Шулико Амелия Вадимовна", 20);
//            Student student3 = new Student("Иванов Евгений Петрович", 19);
//
//            student.addSubjectToStudent(subject1);
//            student.addSubjectToStudent(subject2);
//            student.addSubjectToStudent(subject3);

//            subject.addStudentToSubject(student1);
//            subject.addStudentToSubject(student2);
//            subject.addStudentToSubject(student3);
            session.beginTransaction();
//            Student student = session.get(Student.class, 4);
//            System.out.println(student);
//            System.out.println(student.getSubject());

            Subject subject = session.get(Subject.class, 2);
            session.remove(subject);

//            session.persist(student);
            session.getTransaction().commit();

        }finally {
            factory.close();
            session.close();
        }


    }

}
