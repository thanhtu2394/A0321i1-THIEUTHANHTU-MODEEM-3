package thuc_hanh.reporsi;

import thuc_hanh.bin.User;

import java.util.List;

public interface reposi {
    List<User> select();

   void create(int id,String name,String email,String country);
   void delete(int id);
    List<User> search(String contry);
    void edit(int id,String name,String email,String country);
}
