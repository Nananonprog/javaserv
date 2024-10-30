package org.hibernate;

import org.hibernate.cfg.Configuration;
import org.hibernate.entity.Employee;

import java.util.List;

public class Main3 {
    public static void main(String[] args) {
        SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Employee.class).buildSessionFactory();
        try{
            Session session = factory.getCurrentSession();
            session.beginTransaction();

//            List<Employee> employees = session.createQuery("from Employee").list();

            List<Employee> employees = session.createQuery("from Employee where name = 'Виктория' AND salary > 650").list();

            for(Employee emp : employees){
                System.out.println(emp);
            }
            session.getTransaction().commit();

        }finally {
            factory.close();
        }

    }
}
