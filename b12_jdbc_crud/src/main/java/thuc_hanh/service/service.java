package thuc_hanh.service;

import thuc_hanh.bin.User;

import java.util.List;

public interface service {
    List<User> select();

    void create(int id,String name,String email,String country);
    void delelte(int id);
    List<User> search(String county);
    void edit(int id,String name,String email,String country);
}
