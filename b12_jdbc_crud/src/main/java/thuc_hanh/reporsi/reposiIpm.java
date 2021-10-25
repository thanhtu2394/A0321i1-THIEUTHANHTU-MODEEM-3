package thuc_hanh.reporsi;

import thuc_hanh.bin.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class reposiIpm implements reposi{
static  List<User> userList=new ArrayList<>();
    @Override
    public  List<User> select() {
        try {
            BaseRepo baseRepo=new BaseRepo();
            PreparedStatement preparedStatement=baseRepo.getConnection().prepareStatement("select*from users ");
            ResultSet resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                int id=resultSet.getInt("id");
                String name=resultSet.getString("name");
                String email=resultSet.getString("email");
                String country=resultSet.getString("country");
                userList.add(new User(id,name,email,country));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
return userList;
    }

    @Override
    public void create(User user) {

    }

}
