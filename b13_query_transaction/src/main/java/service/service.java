package service;

import bin.User;

import java.util.List;

public interface service {
    List<User> select();
    List<User> selectCall();

    void create(int id,String name,String email,String country);
    void delelte(int id);
    List<User> search(String county);
    void edit(int id,String name,String email,String country);
}
