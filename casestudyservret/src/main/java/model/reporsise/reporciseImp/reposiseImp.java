package model.reporsise.reporciseImp;

import model.bean.*;
import model.reporsise.database.DBConnection;
import model.service.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class reposiseImp implements reposise {
    @Override
    public List<Customer> showCustomer() {
        List<Customer> customerList = new ArrayList<>();
        DBConnection dbConnection = new DBConnection();

        try {
            String query = "select customer.*,customer_type.customer_type_name from  customer " +
                    "inner join customer_type on customer.customer_type_id= customer_type.customer_type_id  ";
            Connection connection = dbConnection.getConnection();
            connection.setAutoCommit(false);
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet result = preparedStatement.executeQuery();
            while (result.next()) {
                int id = result.getInt("customer_id");
                String name = result.getString("customer_name");
                String bd = result.getString("customer_birthday");
                Boolean gender = result.getBoolean("customer_gender");
                String card = result.getString("customer_id_card");
                String phone = result.getString("customer_phone");
                String email = result.getString("customer_email");
                String address = result.getString("customer_address");
                String typeName = result.getString("customer_type_name");
                int typeId = result.getInt("customer_type_id");
                Customer customer = new Customer(id, (new Type(typeId, typeName)), name, bd, gender, card, phone, email, address);
                customerList.add(customer);
            }
            return customerList;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void delete(int id) {
        DBConnection dbConnection = new DBConnection();

            String query ="delete from customer where customer_id=?";
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
    public Customer findId(int idnew) {
        DBConnection dbConnection = new DBConnection();
        Customer pro=new Customer();

        try {

            String query = "select customer.*,customer_type.customer_type_name from  customer inner join customer_type on customer.customer_type_id= customer_type.customer_type_id where customer_id=?";
            Connection connection = dbConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1,idnew);
            ResultSet result = preparedStatement.executeQuery();
            while (result.next()) {
                pro.setId(result.getInt("customer_id"));
                pro.setName(result.getString("customer_name"));
                pro.setBriday(result.getString("customer_birthday"));
                pro.setGender(result.getBoolean("customer_gender"));
                pro.setId_card(result.getString("customer_id_card"));
                pro.setPhone(result.getString("customer_phone")) ;
                pro.setEmail(result.getString("customer_email"));
                pro.setAddress(result.getString("customer_address"));
                pro.setType(new Type(result.getInt("customer_type_id"),result.getString("customer_type_name")));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return pro;
    }

    @Override
    public void create(int id, String name, String briday, int gender, String card, String phone, String email, String addred, int type) {
        DBConnection dbConnection = new DBConnection();


        String query = "insert into customer values\n" +
                "(?,?,?,?,?,?,?,?,?)";
        Connection connection = dbConnection.getConnection();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(query);
            preparedStatement.setInt(1,id);
            preparedStatement.setInt(2,type);
            preparedStatement.setString(3,name);
            preparedStatement.setString(4,briday);
            preparedStatement.setInt(5,gender);
            preparedStatement.setString(6,card);
            preparedStatement.setString(7,phone);
            preparedStatement.setString(8,email);
            preparedStatement.setString(9,addred);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    @Override
    public void edit(int id, String name, String briday, int gender, String card, String phone, String email, String addred, int type) {
        DBConnection dbConnection = new DBConnection();


        String query = "update customer set customer_type_id=?,customer_name=?,customer_birthday=?,customer_gender=?,customer_id_card=?,customer_phone=?,customer_email=?,customer_address=? where customer_id=?";
        Connection connection = dbConnection.getConnection();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(query);

            preparedStatement.setInt(1,type);
            preparedStatement.setString(2,name);
            preparedStatement.setString(3,briday);
            preparedStatement.setInt(4,gender);
            preparedStatement.setString(5,card);
            preparedStatement.setString(6,phone);
            preparedStatement.setString(7,email);
            preparedStatement.setString(8,addred);
            preparedStatement.setInt(9,id);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    @Override
    public void createService(int id, int area, double cost, int people, RenType renType, ServiceType service_type, String standard_room, String description, int number_of_floors) {

    }

    @Override
    public List<ServiceC> showService() {
        List<ServiceC> serviceList = new ArrayList<>();
        DBConnection dbConnection = new DBConnection();

        try {
            String query = "select * from service inner join rent_type on service.rent_type_id=rent_type.rent_type_id \n" +
                    "inner join service_type on service.service_type_id=service_type.service_type_id ";
            Connection connection = dbConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet result = preparedStatement.executeQuery();
            while (result.next()) {
                int id=result.getInt("service_id");
                String name=result.getString("service_name");
                int area=result.getInt("service_area");
                double cost=result.getDouble("service_cost");
                int people=result.getInt("service_max_people");
                int rentid=result.getInt("rent_type_id");
                String rentname= result.getString("rent_type_name");
                double rentcost=result.getDouble("rent_type_cost");
                int servicetype=result.getInt("service_type_id");
                String servicename=result.getString("service_type_name");
                String standaroom=result.getString("standard_room");
                String description=result.getString("description_other_convenience");
                double pool=result.getDouble("pool_area");
                int floor=result.getInt("number_of_floors");
                ServiceC serviceC=new ServiceC(id,name,area,cost,people,new RenType(rentid,rentname,rentcost),new ServiceType(servicetype,servicename),standaroom,description,pool,floor);
                serviceList.add(serviceC);
            }
            return serviceList;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void createservice(int id, String name, int area, double cost, int people, int kieuthue, int loaithue, String phong, String mota, double beboi, int sotang) {
        DBConnection dbConnection = new DBConnection();


        String query = "insert into service values(?,?,?,?,?,?,?,?,?,?,?)";
        Connection connection = dbConnection.getConnection();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(query);
            preparedStatement.setInt(1,id);
            preparedStatement.setString(2,name);
            preparedStatement.setInt(3,area);
            preparedStatement.setDouble(4,cost);
            preparedStatement.setInt(5,people);
            preparedStatement.setInt(6,kieuthue);
            preparedStatement.setInt(7,loaithue);
            preparedStatement.setString(8,phong);
            preparedStatement.setString(9,mota);
            preparedStatement.setDouble(10,beboi);
            preparedStatement.setInt(11,sotang);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}