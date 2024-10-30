package org.hibernate2;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate2.entity.Detail;
import org.hibernate2.entity.Employee;

public class Main2 {
    public static void main(String[] args) {


        SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Employee.class).addAnnotatedClass(Detail.class).buildSessionFactory();
        Session session = null;

//        try {
//            session = factory.getCurrentSession();
//            Employee employee = new Employee("Александр", "Вершинин", "Sales", 800);
//            Detail detail = new Detail("Юрмала", "+79992122367", "alex@gmail.com");
//
//            session.beginTransaction();
//        } finally {
////
//        }
//    }
        try {


            session = factory.getCurrentSession();
            session.beginTransaction();

            Detail detail = session.get(Detail.class, 4);
            detail.getEmployee().setEmployeeDetail(null);
            session.remove(detail);

            session.getTransaction().commit();
        } finally {
            session.close();
            factory.close();

        }

    }}