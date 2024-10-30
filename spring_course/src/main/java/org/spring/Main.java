package org.spring;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {
    public static void main(String[] args) {
//        System.out.println("Hello world!");
//        Pet pet = new Dog();
//        pet.say();
//        pet  = new Cat();
////        pet.say();
//        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
//        Pet pet = (Pet) context.getBean("myPet");
//        pet.say();
//
//        context.close();

//        Pet pet = new Dog();
//        Person person = new Person(pet);
//        person.callYourPet();

        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
       Person person = (Person) context.getBean("myPerson");
        person.callYourPet();


        context.close();
    }
}