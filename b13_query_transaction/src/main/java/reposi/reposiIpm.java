package reposi;

import bin.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class reposiIpm implements reposi {
    @Override
    public List<User> select() {
        List<User> userList = new ArrayList<>();
        try {
            DBConnection dbConnection=new DBConnection();
            PreparedStatement preparedStatement = dbConnection.getConnection().prepareStatement("select*from users ");
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
        DBConnection dbConnection=new DBConnection();
        Connection connection=dbConnection.getConnection();

        try {
            connection.setAutoCommit(false);
            PreparedStatement preparedStatement =connection.prepareStatement("insert into users value(?,?,?,?)");
            preparedStatement.setInt(1, id);
            preparedStatement.setString(2, name);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, country);
            preparedStatement.executeUpdate();

connection.commit();
        } catch (SQLException throwables) {
            try {
                connection.rollback();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            throwables.printStackTrace();

        }

    }

    @Override
    public void delete(int id) {
        DBConnection dbConnection=new DBConnection();
        PreparedStatement preparedStatement = null;
        Connection connection=dbConnection.getConnection();
        try {
            connection.setAutoCommit(false);
            preparedStatement = connection.prepareStatement("Delete from users where id=?");
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        try {
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
            connection.commit();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            try {
                connection.rollback();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

    @Override
    public List<User> search(String contry) {
        DBConnection dbConnection=new DBConnection();
        PreparedStatement preparedStatement = null;
        List<User> userList=new ArrayList<>();

        try {
            preparedStatement = dbConnection.getConnection().prepareStatement("select*from users where country=?");
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
        DBConnection dbConnection=new DBConnection();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = dbConnection.getConnection().prepareStatement("update users set name=?,email=?,country=? where id=?");
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

    @Override
    public List<User> selectCall() {
        List<User> userList = new ArrayList<>();
        try {
            DBConnection dbConnection=new DBConnection();
            CallableStatement callableStatement=dbConnection.getConnection().prepareCall("call select1() ");
            ResultSet resultSet = callableStatement.executeQuery();
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


}
