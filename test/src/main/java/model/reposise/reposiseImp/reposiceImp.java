package model.reposise.reposiseImp;

import model.bean.Produst;
import model.reposise.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class reposiceImp implements reporsice{
    @Override
    public List<Produst> show() {
        List<Produst> produstLidt=new ArrayList<>();
        DBConnection dbConnection=new DBConnection();
        Connection connection=dbConnection.getConnection();
        String query="select *from produst inner join catogery on produst.id_danhmuc=catogery.id_danhmuc;";
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(query);
            ResultSet resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                int id=resultSet.getInt("id_sanpham");
                String name=resultSet.getString("name_sanpham");
               Double price= resultSet.getDouble("price_sanpham");
                int sanpham=resultSet.getInt("sl_sanpham");
               String color= resultSet.getString("color_sanpham");
                int idDanhMuc=resultSet.getInt("id_danhmuc");
                String danhMuc=resultSet.getString("name_danhmuc");
                Produst produst=new Produst(id,name,price,sanpham,color,idDanhMuc,danhMuc);
                produstLidt.add(produst);
            }
            return produstLidt;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public void create(String name, double price, int soluong, String color, int idDanhMuc) {
        String query="insert into produst(name_sanpham,price_sanpham,sl_sanpham,color_sanpham,id_danhmuc) values(?,?,?,?,?);";
        DBConnection dbConnection=new DBConnection();
        Connection connection=dbConnection.getConnection();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(query);
           preparedStatement.setString(1,name);
           preparedStatement.setDouble(2,price);
           preparedStatement.setInt(3,soluong);
            preparedStatement.setString(4,color);
            preparedStatement.setInt(5,idDanhMuc);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public List<Produst> findName(String Name) {
        List<Produst> produstLidt=new ArrayList<>();
        String query="select *from produst inner join catogery on produst.id_danhmuc=catogery.id_danhmuc where name_sanpham like ?";
        DBConnection dbConnection=new DBConnection();
        Connection connection=dbConnection.getConnection();

        try {
            PreparedStatement preparedStatement=connection.prepareStatement(query);
            preparedStatement.setString(1,"%"+Name+"%");
            ResultSet resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                int id=resultSet.getInt("id_sanpham");
                String name=resultSet.getString("name_sanpham");
                Double price= resultSet.getDouble("price_sanpham");
                int sanpham=resultSet.getInt("sl_sanpham");
                String color= resultSet.getString("color_sanpham");
                int idDanhMuc=resultSet.getInt("id_danhmuc");
                String danhMuc=resultSet.getString("name_danhmuc");
                Produst produst= new Produst(id,name,price,sanpham,color,idDanhMuc,danhMuc);
                produstLidt.add(produst);
            }
            return produstLidt;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public void delete(int id) {
        String query="delete from produst where id_sanpham=?";
        DBConnection dbConnection=new DBConnection();
        Connection connection=dbConnection.getConnection();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(query);
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    @Override
    public List<Produst> findPrice(String prices) {
        List<Produst> produstLidt=new ArrayList<>();
        String query="select *from produst inner join catogery on produst.id_danhmuc=catogery.id_danhmuc where price_sanpham like ?";
        DBConnection dbConnection=new DBConnection();
        Connection connection=dbConnection.getConnection();
        String price1= String.valueOf(prices);
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(query);
            preparedStatement.setString(1, price1+"%");
            ResultSet resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                int id=resultSet.getInt("id_sanpham");
                String name=resultSet.getString("name_sanpham");
                Double price= resultSet.getDouble("price_sanpham");
                int sanpham=resultSet.getInt("sl_sanpham");
                String color= resultSet.getString("color_sanpham");
                int idDanhMuc=resultSet.getInt("id_danhmuc");
                String danhMuc=resultSet.getString("name_danhmuc");
                Produst produst= new Produst(id,name,price,sanpham,color,idDanhMuc,danhMuc);
                produstLidt.add(produst);
            }
            return produstLidt;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public Produst fintId(int id1) {
        String query="select *from produst inner join catogery on produst.id_danhmuc=catogery.id_danhmuc where id_sanpham=?";
        DBConnection dbConnection=new DBConnection();
        Connection connection=dbConnection.getConnection();

        try {
            PreparedStatement preparedStatement=connection.prepareStatement(query);
            preparedStatement.setInt(1,id1);
            ResultSet resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                int id=resultSet.getInt("id_sanpham");
                String name=resultSet.getString("name_sanpham");
                Double price= resultSet.getDouble("price_sanpham");
                int sanpham=resultSet.getInt("sl_sanpham");
                String color= resultSet.getString("color_sanpham");
                int idDanhMuc=resultSet.getInt("id_danhmuc");
                String danhMuc=resultSet.getString("name_danhmuc");
                return new Produst(id,name,price,sanpham,color,idDanhMuc,danhMuc);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Produst> findall(String name1, String prices1, String color1, String cate1) {

        List<Produst> produstLidt=new ArrayList<>();
        String query="select *from produst inner join catogery on produst.id_danhmuc=catogery.id_danhmuc where name_sanpham like ? and price_sanpham like ? and color_sanpham like ? and name_danhmuc like ?;";
        DBConnection dbConnection=new DBConnection();
        Connection connection=dbConnection.getConnection();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(query);
            preparedStatement.setString(1,"%"+name1+"%");
            preparedStatement.setString(2, prices1+"%");
            preparedStatement.setString(3, "%"+color1+"%");
            preparedStatement.setString(4, "%"+cate1+"%");
            ResultSet resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                int id=resultSet.getInt("id_sanpham");
                String name=resultSet.getString("name_sanpham");
                Double price= resultSet.getDouble("price_sanpham");
                int sanpham=resultSet.getInt("sl_sanpham");
                String color= resultSet.getString("color_sanpham");
                int idDanhMuc=resultSet.getInt("id_danhmuc");
                String danhMuc=resultSet.getString("name_danhmuc");
                Produst produst= new Produst(id,name,price,sanpham,color,idDanhMuc,danhMuc);
                produstLidt.add(produst);
            }
            return produstLidt;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public void edit(int id, String name, Double gia, int sl, String cl, int danhmuc) {
        String query="insert into produst(name_sanpham,price_sanpham,sl_sanpham,color_sanpham,id_danhmuc) values(?,?,?,?,?);";
        String query1="update produst set name_sanpham=?,price_sanpham=?,sl_sanpham=?,color_sanpham=?,id_danhmuc=? where id_sanpham=?";
        DBConnection dbConnection=new DBConnection();
        Connection connection=dbConnection.getConnection();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(query1);
            preparedStatement.setString(1,name);
            preparedStatement.setDouble(2,gia);
            preparedStatement.setInt(3,sl);
            preparedStatement.setString(4,cl);
            preparedStatement.setInt(5,danhmuc);
            preparedStatement.setInt(6,id);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }
}
//id_sanpham int auto_increment,
//        name_sanpham varchar(50) not null,
//        price_sanpham double,
//        sl_sanpham int,
//        color_sanpham varchar(10),
//        id_danhmuc int,
