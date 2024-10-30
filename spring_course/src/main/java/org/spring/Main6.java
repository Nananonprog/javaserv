package org.spring;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Main6 {
    public static void main(String[] args) {
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(MyConfig.class);

        Pet cat = context.getBean("catBean", Pet.class);
//        Person person = context.getBean("personBean", Person.class);
//        person.callYourPet();

        context.close();
    }
}
