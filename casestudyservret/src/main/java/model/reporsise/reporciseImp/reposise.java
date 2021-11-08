package model.reporsise.reporciseImp;

import model.bean.Customer;
import model.bean.RenType;
import model.bean.ServiceC;
import model.bean.ServiceType;
import model.service.service;

import java.util.List;

public interface reposise {
    List<Customer> showCustomer();
   void delete(int id);
   Customer findId(int idnew);
    void create(int id,String name,String briday,int gender,String card,String phone,String email,String addred,int type);
    void edit(int id,String name,String briday,int gender,String card,String phone,String email,String addred,int type);
    void createService(int id,int area,double cost,int people,RenType renType,ServiceType service_type,String standard_room,String description,int number_of_floors);
    List<ServiceC> showService();

    void createservice(int id, String name, int area, double cost, int people, int kieuthue, int loaithue, String phong, String mota, double beboi, int sotang);
}
//    private int id;
//    private int area;
//    private double cost;
//    private int people;
//    private RenType renType_;
//    private ServiceType service_type;
//    private String standard_room;
//    private String description;
//    private Double pool_area;
//    private int number_of_floors;
