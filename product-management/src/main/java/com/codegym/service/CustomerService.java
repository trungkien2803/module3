package com.codegym.service;

import com.codegym.model.Product;

import java.util.ArrayList;
import java.util.List;

public class CustomerService implements ICustomerService{
    private static List<Product> products = new ArrayList<>();

    static {
        products.add(new Product("1","Milk","6000"));
        products.add(new Product("2","Candy","1000"));
        products.add(new Product("3","Tissue","5000"));
        products.add(new Product("4","Bread","15000"));
        products.add(new Product("5","Coca","10000"));
    }

    @Override
    public List<Product> findAll() {
        return products;
    }

    @Override
    public void save(Product product) {
        products.add(product);
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> productList = new ArrayList<>();
        for (Product product : products){
            if (product.getName().equals(name)){
                productList.add(product);
            }
        }
        return productList;
    }

    @Override
    public void update(String id, Product newProduct) {
        for (Product product : products){
            if (product.getId().equals(id)){
               product = newProduct;
            }
        }
    }

    @Override
    public void remove(String id) {
        for (Product product : products){
            if (product.getId().equals(id)){
                products.remove(product);
            }
        }
    }

    public List<Product> getProducts() {
        return products;
    }
}
