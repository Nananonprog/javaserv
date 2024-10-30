package org.spring_telusko.service;

import org.spring_telusko.model.Product;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Service
public class ProductService {

    List<Product> products  = Arrays.asList(new Product(101, "Iphone", 5000), new Product(102, "Samsung", 1000), new Product(103, "Nokia", 2000));

    public List<Product> getProducts() {
        return products;
    }
}
