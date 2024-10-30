package org.hibernate_many_to_many;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate_many_to_many.entity.Child;
import org.hibernate_many_to_many.entity.Section;

public class Main {
    public static void main(String[] args) {
        SessionFactory factory = new Configuration().configure("hibernate.cfg2.xml").addAnnotatedClass(Child.class).addAnnotatedClass(Section.class).buildSessionFactory();

        Session session = null;
        try {
            session = factory.getCurrentSession();
            session.beginTransaction();

//           Child child = new Child("Толик", 12);
//           Section section = new Section("Programming");
//           Section section2 = new Section("Robotics");
//           child.addSection(section);
//           child.addSection(section2);
//           session.persist(child);
            Child child = session.get(Child.class, 5);
            session.remove(child);
           session.getTransaction().commit();
        }finally {
            session.close();
            factory.close();
        }
    }
}
