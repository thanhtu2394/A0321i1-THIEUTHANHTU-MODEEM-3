package model.service;

import model.bean.Produst;

import java.util.List;

public interface service {
    List<Produst> show();
    void create(String name,double price,int soluong,String color,int idDanhMuc);
    void delete(int id);
    List<Produst> findName(String Name);
    List<Produst> findPrice(String prices);
    List<Produst> findall(String name1,String prices1,String color1,String cate1);
    Produst fintId(int id1);

    void edit(int id, String name, Double gia, int sl, String cl, int danhmuc);
}
