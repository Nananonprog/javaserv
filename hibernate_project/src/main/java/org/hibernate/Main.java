package org.hibernate;

import org.hibernate.cfg.Configuration;
import org.hibernate.entity.Employee;

public class Main {
    public static void main(String[] args) {
        SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Employee.class).buildSessionFactory();
        try{
            Session session = factory.getCurrentSession();
            Employee employee = new Employee("Игорь", "Парашют", "IT", 600);
            session.beginTransaction();
            session.persist(employee);
            System.out.println(employee);//save()
            session.getTransaction().commit();

        }finally {
            factory.close();
        }

    }
}
