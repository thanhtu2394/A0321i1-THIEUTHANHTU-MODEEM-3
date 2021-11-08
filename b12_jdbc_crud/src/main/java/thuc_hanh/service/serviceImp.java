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

    @Override
    public void create(int id,String name,String email,String country) {
        reposiIpm.create(id,name,email,country);
    }

    @Override
    public void delelte(int id) {
        reposiIpm.delete(id);
    }

    @Override
    public List<User> search(String county) {
        return reposiIpm.search(county);

    }

    @Override
    public void edit(int id, String name, String email, String country) {
        reposiIpm.edit(id, name, email, country);
    }
}
