package org.spring_telusko.controller;

import org.spring_telusko.model.Product;
import org.spring_telusko.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
@RestController
public class ProductController {

    @Autowired
    ProductService service;
    @RequestMapping("/products")
    public List<Product> getProduct(){
        return service.getProducts();
    }
}
