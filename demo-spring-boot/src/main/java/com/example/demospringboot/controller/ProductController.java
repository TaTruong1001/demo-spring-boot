package com.example.demospringboot.controller;

import com.example.demospringboot.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
    @Autowired
    private ProductService productService;
    @RequestMapping(value = {"/", "/products"})
    public String getProducts(Model model){
        model.addAttribute("products", productService.getProducts());
        return "home/products";
    }
}
