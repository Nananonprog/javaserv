package org.hibernate2;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate2.entity.Detail;
import org.hibernate2.entity.Employee;

public class Main {
    public static void main(String[] args) {

        SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Employee.class).addAnnotatedClass(Detail.class).buildSessionFactory();


            Session session = factory.getCurrentSession();
          try{
//          Employee employee = new Employee("Роман", "Соколов", "IT", 500);
//            Detail detail = new Detail("Москва", "+79992122367", "roman@gmail.com");
//            employee.setEmployeeDetail(detail);
//            session.beginTransaction();
//
//            session.persist(employee);
//            session.getTransaction().commit();
//            Session session = factory.getCurrentSession();
//            Employee employee = new Employee("Игорь", "Иванов", "Sales", 700);
//            Detail detail = new Detail("Воронеж", "+75553042366", "igorn@gmail.com");
//            employee.setEmployeeDetail(detail);
//            session.beginTransaction();
//
//            session.persist(employee);
//            session.getTransaction().commit();

//            Session session = factory.getCurrentSession();
//            session.beginTransaction();
//
//            Employee employee = session.get(Employee.class, 2);
//            System.out.println(employee.getEmployeeDetail());
//
//            session.getTransaction().commit();

            session = factory.getCurrentSession();
            session.beginTransaction();

            Employee emp = session.get(Employee.class, 2);
            session.remove(emp);

        } finally {
            session.close();
            factory.close();
        }
    }
}
