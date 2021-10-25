package thuc_hanh.service;

import thuc_hanh.bin.User;

import java.util.List;

import thuc_hanh.reporsi.reposiIpm;

public class serviceImp implements service {
    reposiIpm reposiIpm=new reposiIpm();
    @Override
    public List<User> select() {
       return reposiIpm.select();

    }
}
