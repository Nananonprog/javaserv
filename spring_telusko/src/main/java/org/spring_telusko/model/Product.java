package org.spring_telusko.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.springframework.stereotype.Component;

@Data
@AllArgsConstructor
@Component
public class Product {

    private int prodId;
    private String prodName;
    private int price;
}
