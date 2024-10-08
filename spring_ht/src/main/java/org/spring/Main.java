package org.spring;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {
    public static void main(String[] args) {
//        Vehicle v = new Car();
//        v.say();
//        v = new Motorcycle();
//        v.say();

        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
//        Vehicle vehicle = (Vehicle) context.getBean("myVehicle");
//        Mechanic mechanic = new Mechanic(vehicle);
        Mechanic mechanic = context.getBean("mechBean", Mechanic.class);
        mechanic.drive();
        
        System.out.println(mechanic.getName());
        System.out.println(mechanic.getAge());
//        Car myCar = (Car) context.getBean("myVehicle");
//        myCar.setModel("Toyota");
//        Car yourCar = (Car) context.getBean("myVehicle");
//        yourCar.setModel("Nissan");

//        System.out.println(myCar.getModel());
//        System.out.println(yourCar.getModel());
//        Mechanic mechanic = (Mechanic) context.getBean("myMechanic");

//        mechanic.drive();
//        System.out.println(mechanic.getName());
//        System.out.println(mechanic.getAge());

        context.close();
    }
}