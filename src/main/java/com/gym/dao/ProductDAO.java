package com.gym.dao;

import java.util.*;
import com.gym.model.Product;
import com.gym.model.Membership;

public class ProductDAO {

    public static List<Product> getProducts() {
        List<Product> list = new ArrayList<>();
        list.add(new Product(1, "Dumbbells", 50));
        list.add(new Product(2, "Treadmill", 500));
        list.add(new Product(3, "Bench Press", 300));
        return list;
    }

    private static List<Membership> membershipList = new ArrayList<>();

    public static void addMembership(String name, String mobileNumber) {
        membershipList.add(new Membership(name, mobileNumber));
    }

    public static List<Membership> getMemberships() {
        return membershipList;
    }
}
