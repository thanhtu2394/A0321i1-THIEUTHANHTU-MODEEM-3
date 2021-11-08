package model.bean;

public class Produst {
    private int id;
    private String name;
    private double price;
    private int soluong;
    private String color;
    private int idDanhMuc;
    private String nameDanhMuc;

    public Produst(int id, String name, double price, int soluong, String color, int idDanhMuc, String nameDanhMuc) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.soluong = soluong;
        this.color = color;
        this.idDanhMuc = idDanhMuc;
        this.nameDanhMuc = nameDanhMuc;
    }

    public Produst() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getIdDanhMuc() {
        return idDanhMuc;
    }

    public void setIdDanhMuc(int idDanhMuc) {
        this.idDanhMuc = idDanhMuc;
    }

    public String getNameDanhMuc() {
        return nameDanhMuc;
    }

    public void setNameDanhMuc(String nameDanhMuc) {
        this.nameDanhMuc = nameDanhMuc;
    }
}
//id_sanpham int auto_increment,
//        name_sanpham varchar(50) not null,
//        price_sanpham double,
//        sl_sanpham int,
//        color_sanpham varchar(10),
//        id_danhmuc int,