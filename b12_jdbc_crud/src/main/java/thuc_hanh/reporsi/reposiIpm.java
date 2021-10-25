package thuc_hanh.reporsi;

import thuc_hanh.bin.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class reposiIpm implements reposi{

    BaseRepo baseRepo=new BaseRepo();
    @Override
    public  List<user> select() {
        List<user> userList=new ArrayList<>();
        try {
            PreparedStatement preparedStatement=baseRepo.getConnection().prepareStatement("select * from users ");
            ResultSet resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                int id=resultSet.getInt("id");
                String name=resultSet.getString("name");
                String email=resultSet.getString("email");
                String country=resultSet.getString("country");
                userList.add(new user(id,name,email,country));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
return userList;
    }

    @Override
    public void create(user user) {

    }

}
