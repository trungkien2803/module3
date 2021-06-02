package com.codegym.service;

import com.codegym.model.Product;

import java.util.List;

public interface ICustomerService {
    List<Product> findAll();

    void save(Product product);

    List<Product> findByName(String name);

    void update(String id,Product product);

    void remove(String id);
}
