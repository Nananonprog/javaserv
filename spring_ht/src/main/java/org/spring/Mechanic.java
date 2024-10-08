package org.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component("mechBean")
public class Mechanic {
    private Vehicle vehicle;
    @Value("${mechanic.name}")
    private String name;
    @Value("${mechanic.age}")
    private int age;

    public Mechanic() {
        System.out.println("Constructor Mechanic без параметров");
    }


    @Autowired
    public Mechanic(@Qualifier("myMoto")Vehicle vehicle) {
        System.out.println("Mechanic constructor");
        this.vehicle = vehicle;

    }

    public void setVehicle(Vehicle vehicle) {
        System.out.println("В класс Mechanic добавлен транспорт");
        this.vehicle = vehicle;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        System.out.println("Class Mechanic: setName");
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        System.out.println("Class Mechanic: setAge");
        this.age = age;
    }

    public void drive(){
        System.out.println("Механик запустил двигатель транспорта");
        vehicle.say();
    }
}
