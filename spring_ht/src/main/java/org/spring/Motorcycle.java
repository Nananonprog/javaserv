package org.spring;

import org.springframework.stereotype.Component;

@Component("myMoto")
public class Motorcycle implements Vehicle {
    private String model;

    public Motorcycle() {
        System.out.println("Constructor Motorcycle");
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    @Override
    public void say(){
        System.out.println("Это мотоцикл");
    }
}
