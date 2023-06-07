package com.example.demospringboot.repository;

import com.example.demospringboot.entity.ProductEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends CrudRepository<ProductEntity,Integer> {

}
