package org.one_to_many;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.one_to_many.entity.Department;
import org.one_to_many.entity.Employee;

public class Main {
    public static void main(String[] args) {
        SessionFactory factory = new Configuration().configure("hibernate.cfg2.xml").addAnnotatedClass(Employee.class).addAnnotatedClass(Department.class).buildSessionFactory();

        Session session = null;

        try {
//            session = factory.getCurrentSession();
//
//            Department department = new Department("IT", 1300, 700);
//            Employee employee1 = new Employee("Виктор", "Романов", 800);
//            Employee employee2 = new Employee("Ирина", "Комина", 1000);
//
//            department.addEmployeeToDepartment(employee1);
//            department.addEmployeeToDepartment(employee2);
//
//
//            session.beginTransaction();
//            session.persist(department);
//            session.getTransaction().commit();

            session = factory.getCurrentSession();
            session.beginTransaction();

            Employee employee = session.get(Employee.class, 1);
            session.remove(employee);
            session.getTransaction().commit();

        }finally {
            session.close();
            factory.close();
        }
    }
}
