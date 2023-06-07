package com.example.demospringboot.service;

import com.example.demospringboot.entity.ProductEntity;
import com.example.demospringboot.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProductService {
    @Autowired
    private ProductRepository productRepository;
    public List<ProductEntity> getProducts(){
        return (List<ProductEntity>) productRepository.findAll();
    }
}
