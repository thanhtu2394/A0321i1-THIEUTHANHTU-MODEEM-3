package model.service;

import model.bean.Customer;
import model.bean.ServiceC;

import java.util.List;

public interface service {
    List<Customer> showCustomer();
    void delete(int id);
    Customer findId(int idnew);
    void edit(int id,String name,String briday,int gender,String card,String phone,String email,String addred,int type);
    void create(int id,String name,String briday,int gender,String card,String phone,String email,String addred,int type);
    List<ServiceC> showService();

    void createservice(int id, String name, int area, double cost, int people, int kieuthue, int loaithue, String phong, String mota, double beboi, int sotang);
}
