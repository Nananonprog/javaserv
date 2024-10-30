package org.spring;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main4 {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext3.xml");

        Person person = (Person) context.getBean("personBean");
        person.callYourPet();
//        Cat myCat = (Cat) context.getBean("cat");
//        myCat.say();
        System.out.println(person.getSurname());
        System.out.println(person.getAge());

        context.close();
    }
}
