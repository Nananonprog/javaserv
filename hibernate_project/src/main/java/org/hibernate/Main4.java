package org.hibernate;

import org.hibernate.cfg.Configuration;
import org.hibernate.entity.Employee;

public class Main4 {
    public static void main(String[] args) {
        SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Employee.class).buildSessionFactory();
        try{
            Session session = factory.getCurrentSession();
            session.beginTransaction();
            session.createQuery(" delete from Employee where name = 'Игорь'").executeUpdate();
//            Employee employee = session.get(Employee.class, 1);
//            employee.setSalary(1500);
//            session.createQuery("update Employee set salary = 1000 where name = 'Игорь'").executeUpdate();
//            session.getTransaction().commit();

//            session.remove(employee);
            session.getTransaction().commit();
        }finally {
            factory.close();
        }

    }
}
