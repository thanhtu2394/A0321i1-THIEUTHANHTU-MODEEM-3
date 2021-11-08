package model.reposise.reposiseImp;

import model.bean.Produst;

import java.util.List;

public interface reporsice {
    List<Produst> show();
    void create(String name,double price,int soluong,String color,int idDanhMuc);
    List<Produst> findName(String Name);
    void delete(int id);
    List<Produst> findPrice(String prices);
    Produst fintId(int id1);
    List<Produst> findall(String name1,String prices1,String color1,String cate1);

    void edit(int id, String name, Double gia, int sl, String cl, int danhmuc);
}
//    private int id;
//    private String name;
//    private double price;
//    private int soluong;
//    private String color;
//    private int idDanhMuc;
//    private String nameDanhMuc;