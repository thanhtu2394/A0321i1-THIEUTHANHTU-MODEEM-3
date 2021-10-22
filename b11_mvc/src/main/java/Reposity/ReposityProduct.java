package Reposity;

import entity.Product;

import java.util.List;

public interface ReposityProduct {
    List<Product> findall();
    void update(Product product);

    List<Product> find(String tenSanPham);

    void delete(int sp);

    Product findid(int id);

    void edit(int msp, String tsp, float gia, String xuatsu, boolean ht);
}
