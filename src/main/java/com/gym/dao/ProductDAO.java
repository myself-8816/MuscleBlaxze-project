package com.gym.dao;

import java.util.*;
import com.gym.model.Product;

public class ProductDAO {

    public static List<Product> getProducts() {
        List<Product> list = new ArrayList<>();
        list.add(new Product(1, "Dumbbells", 50));
        list.add(new Product(2, "Treadmill", 500));
        list.add(new Product(3, "Bench Press", 300));
        return list;
    }
}
