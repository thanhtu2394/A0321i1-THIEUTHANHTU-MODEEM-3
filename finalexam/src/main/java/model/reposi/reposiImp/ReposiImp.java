package model.reposi.reposiImp;

import model.bean.BenhNhan;
import model.reposi.DBConnection;
import model.reposi.Reprosi;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ReposiImp implements Reprosi {
    @Override
    public List<BenhNhan> show() {
        List<BenhNhan> produstLidt = new ArrayList<>();
        DBConnection dbConnection = new DBConnection();
        Connection connection = dbConnection.getConnection();
        String query = "select*from benhnhan inner join benhan on benhnhan.id_benhan=benhan.id_benhan";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int idbenhan = resultSet.getInt("id_benhan");
                int idbenhnhan = resultSet.getInt("id_benhnhan");
                String namebenhnhan = resultSet.getString("name_benhnhan");
                String ngaynhapvien = resultSet.getString("ngay_nhap_vien");
                String ngayravien = resultSet.getString("ngay_ra_vien");
                String lydo = resultSet.getString("ly_do_nhap_vien");
                String namebenhan = resultSet.getString("name_benhan");
                BenhNhan benhNhan = new BenhNhan(idbenhan, idbenhnhan, namebenhnhan, ngaynhapvien, ngayravien, lydo, namebenhan);
                produstLidt.add(benhNhan);
            }
            return produstLidt;

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public void delete(int id) {
        String query="delete from benhnhan where id_benhnhan=?";
        DBConnection dbConnection = new DBConnection();
        Connection connection = dbConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    @Override
    public BenhNhan findId(int id) {

        String query="select*from benhnhan inner join benhan on benhnhan.id_benhan=benhan.id_benhan where id_benhnhan=?;";
        DBConnection dbConnection=new DBConnection();
        Connection connection=dbConnection.getConnection();

        try {
            PreparedStatement preparedStatement=connection.prepareStatement(query);
            preparedStatement.setInt(1,id);
            ResultSet resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                int idbenhan = resultSet.getInt("id_benhan");
                int idbenhnhan = resultSet.getInt("id_benhnhan");
                String namebenhnhan = resultSet.getString("name_benhnhan");
                String ngaynhapvien = resultSet.getString("ngay_nhap_vien");
                String ngayravien = resultSet.getString("ngay_ra_vien");
                String lydo = resultSet.getString("ly_do_nhap_vien");
                String namebenhan = resultSet.getString("name_benhan");

                return new BenhNhan(idbenhan, idbenhnhan, namebenhnhan, ngaynhapvien, ngayravien, lydo, namebenhan);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public void update(int idba, int idbenhnhan, String namebenhnhan, String ngaynhapvien, String ngayravien, String lydo) {

        String query1="update benhnhan set name_benhnhan=?,ngay_nhap_vien=?,ngay_ra_vien=?,ly_do_nhap_vien=? where id_benhnhan=?";
        DBConnection dbConnection=new DBConnection();
        Connection connection=dbConnection.getConnection();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(query1);
            preparedStatement.setString(1,namebenhnhan);
            preparedStatement.setString(2,ngaynhapvien);
            preparedStatement.setString(3,ngayravien);
            preparedStatement.setString(4,lydo);
            preparedStatement.setInt(5,idbenhnhan);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}


