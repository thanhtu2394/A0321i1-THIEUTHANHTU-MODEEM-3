package thuc_hanh.reporsi;

import thuc_hanh.bin.user;

import java.util.List;

public interface reposi {
    List<user> select();

   void create(user user);
}
