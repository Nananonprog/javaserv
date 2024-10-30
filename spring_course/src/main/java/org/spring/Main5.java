package org.spring;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main5 {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext3.xml");

Dog myDog = (Dog) context.getBean("dog");
Dog yourDog = (Dog) context.getBean("dog");
        context.close();
    }
}
