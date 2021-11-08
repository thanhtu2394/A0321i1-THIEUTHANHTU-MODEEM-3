package model.service.serviceImp;

import model.bean.Produst;
import model.reposise.reposiseImp.reposiceImp;
import model.service.service;

import java.util.List;

public class serviceImp implements service {
    model.reposise.reposiseImp.reposiceImp reposiceImp=new reposiceImp();
    @Override
    public List<Produst> show() {
        return reposiceImp.show();
    }

    @Override
    public void create(String name, double price, int soluong, String color, int idDanhMuc) {
        reposiceImp.create(name,price,soluong,color,idDanhMuc);
    }

    @Override
    public void delete(int id) {
        reposiceImp.delete(id);
    }

    @Override
    public List<Produst> findName(String Name) {
        return reposiceImp.findName(Name);
    }

    @Override
    public List<Produst> findPrice(String prices) {
        return reposiceImp.findPrice(prices);
    }

    @Override
    public List<Produst> findall(String name1, String prices1, String color1, String cate1) {
        return reposiceImp.findall(name1,prices1,color1,cate1);
    }

    @Override
    public Produst fintId(int id1) {
        return reposiceImp.fintId(id1);
    }

    @Override
    public void edit(int id, String name, Double gia, int sl, String cl, int danhmuc) {
        reposiceImp.edit(id,name,gia,sl,cl,danhmuc);
    }

}
