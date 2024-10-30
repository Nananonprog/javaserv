package org.spring;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

//@Component("catBean")

public class Cat implements Pet {
    public Cat() {
        System.out.println("Constructor CAT");
    }
    @Override
    public void say(){
        System.out.println("Мяу-Мяу");
    }
}
