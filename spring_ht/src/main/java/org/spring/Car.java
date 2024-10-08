package org.spring;

import org.springframework.stereotype.Component;
@Component("carBean")
public class Car  implements Vehicle{

    private String model;

    public Car() {
        System.out.println("Constructor Car");
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    @Override
    public void say(){
        System.out.println("Это легковой автомобиль");
    }
}
