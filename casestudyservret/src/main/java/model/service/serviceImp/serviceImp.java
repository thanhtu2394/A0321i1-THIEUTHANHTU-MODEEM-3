package model.service.serviceImp;

import model.bean.Customer;
import model.bean.ServiceC;
import model.reporsise.reporciseImp.reposiseImp;
import model.service.service;

import java.util.List;

public class serviceImp implements service {
    model.reporsise.reporciseImp.reposiseImp reposiseImp=new reposiseImp();
    @Override
    public List<Customer> showCustomer() {
        return reposiseImp.showCustomer();
    }

    @Override
    public void delete(int id) {
        reposiseImp.delete(id);

    }

    @Override
    public Customer findId(int idnew) {

        return reposiseImp.findId(idnew);
    }

    @Override
    public void edit(int id, String name, String briday, int gender, String card, String phone, String email, String addred, int type) {
        reposiseImp.edit(id,name,briday,gender,card,phone,email,addred,type);
    }

    @Override
    public void create(int id, String name, String briday, int gender, String card, String phone, String email, String addred, int type) {
        reposiseImp.create(id,name,briday,gender,card,phone,email,addred,type);
    }

    @Override
    public List<ServiceC> showService() {
        return reposiseImp.showService();
    }

    @Override
    public void createservice(int id, String name, int area, double cost, int people, int kieuthue, int loaithue, String phong, String mota, double beboi, int sotang) {
        reposiseImp.createservice(id,name,area,cost,people,kieuthue,loaithue,phong,mota,beboi,sotang);
    }
}
