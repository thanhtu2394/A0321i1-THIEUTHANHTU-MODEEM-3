package service;

import Reposity.ReposityProduct;
import Reposity.ReposityProductImp;
import entity.Product;

import java.util.List;

public class ServiceProductImp implements ServiceProduct {
    ReposityProductImp reposityProductImp = new ReposityProductImp();

    @Override
    public List<Product> findAll() {
        return reposityProductImp.findall();
    }

    @Override
    public void update(Product product) {
        reposityProductImp.update(product);
    }

    @Override
    public List<Product> find(String tenSanPham) {
       return reposityProductImp.find(tenSanPham);
    }

    @Override
    public void delete(int sp) {
        reposityProductImp.delete(sp);
    }

    @Override
    public Product findid(int id) {
        return reposityProductImp.findid(id);
    }

    @Override
    public void edit(int msp, String tsp, float gia, String xuatsu, boolean ht) {
        reposityProductImp.edit(msp,tsp,gia,xuatsu,ht);
    }
}
