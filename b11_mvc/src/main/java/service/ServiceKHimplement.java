package service;

import Reposity.ReposityKHIpm;
import entity.ModelKh;

import java.util.List;


public class ServiceKHimplement implements ServiceKH{
    ReposityKHIpm reposityKHIpm=new ReposityKHIpm();
    @Override
    public List<ModelKh> findAll() {
        return this.reposityKHIpm.findAll();
    }

    @Override
    public void update(ModelKh object) {
        reposityKHIpm.update(object);
    }

    @Override
    public ModelKh find(String id) {
    return reposityKHIpm.find(id);

    }


    @Override
    public void edit(String id, String name) {
        reposityKHIpm.edit(id,name);
    }

    @Override
    public void delete(String id) {
        reposityKHIpm.delete(id);
    }
}
