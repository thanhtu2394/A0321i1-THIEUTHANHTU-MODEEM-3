package thuc_hanh.service;

import thuc_hanh.bin.user;

import java.util.List;
import thuc_hanh.reporsi.reposi;
import thuc_hanh.reporsi.reposiIpm;

public class serviceImp implements service {
    reposiIpm reposiIpm=new reposiIpm();
    @Override
    public List<user> select() {
       return reposiIpm.select();

    }
}
