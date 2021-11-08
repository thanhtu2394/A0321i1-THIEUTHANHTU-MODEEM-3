package thuc_hanh.reporsi;

import thuc_hanh.bin.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class reposiIpm implements reposi {
    @Override
    public List<User> select() {
        List<User> userList = new ArrayList<>();
        try {
            BaseRepo baseRepo = new BaseRepo();
            PreparedStatement preparedStatement = baseRepo.getConnection().prepareStatement("select*from users ");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                userList.add(new User(id, name, email, country));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return userList;
    }

    @Override
    public void create(int id, String name, String email, String country) {
        BaseRepo baseRepo = new BaseRepo();
        try {
            PreparedStatement preparedStatement = baseRepo.getConnection().prepareStatement("insert into users value(?,?,?,?)");
            preparedStatement.setInt(1, id);
            preparedStatement.setString(2, name);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, country);
            preparedStatement.executeUpdate();


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


    }

    @Override
    public void delete(int id) {
        BaseRepo baseRepo = new BaseRepo();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = baseRepo.getConnection().prepareStatement("Delete from users where id=?");
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        try {
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    @Override
    public List<User> search(String contry) {
        BaseRepo baseRepo = new BaseRepo();
        PreparedStatement preparedStatement = null;
        List<User> userList=new ArrayList<>();

        try {
            preparedStatement = baseRepo.getConnection().prepareStatement("select*from users where country=?");
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        try {
            preparedStatement.setString(1,contry);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        try {
            ResultSet resultSet=preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                 userList.add(new User(id,name,email,contry));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
       return userList;
    }


    @Override
    public void edit(int id,String name,String email,String country) {
        BaseRepo baseRepo = new BaseRepo();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = baseRepo.getConnection().prepareStatement("update users set name=?,email=?,country=? where id=?");
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        try {
            preparedStatement.setString(1,name);
            preparedStatement.setString(2,email);
            preparedStatement.setString(3,country);
            preparedStatement.setInt(4,id);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }


}
