package thuc_hanh.reporsi;

import thuc_hanh.bin.User;

import java.util.List;

public interface reposi {
    List<User> select();

   void create(User user);
}
