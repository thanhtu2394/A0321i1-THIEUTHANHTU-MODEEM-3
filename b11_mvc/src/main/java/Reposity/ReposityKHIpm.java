package Reposity;

import entity.ModelKh;
import java.util.ArrayList;
import java.util.List;

public class ReposityKHIpm implements ReposityKH {
    static List<ModelKh> Reposity=new ArrayList();
    static{
        Reposity.add(new ModelKh(1, "thieu1", "thanh1", "k1"));
        Reposity.add(new ModelKh(2,"thieu2","thanh2","k12"));
        Reposity.add( new ModelKh(3,"thieu3","thanh3","k13"));
        Reposity.add( new ModelKh(4,"thieu4","thanh4","k14"));
    }

    @Override
    public List<ModelKh> findAll() {
        return Reposity;
    }

    @Override
    public void update(ModelKh object) {
        Reposity.add(object);
    }

    @Override
    public ModelKh find(String id) {
        int temp=Integer.parseInt(id);
        for (ModelKh index:Reposity
             ) {
            if(temp==index.getId()){
                return index;
            }

        }
        return null;
    }

    @Override
    public void edit(String id, String name) {
        int temp=Integer.parseInt(id);
        for(int i=0;i<Reposity.size();i++){
            if(temp==Reposity.get(i).getId()){
                Reposity.get(i).setName(name);
            }
        }
    }

    @Override
    public void delete(String id) {
        int temp=Integer.parseInt(id);
        for(int i=0;i<Reposity.size();i++){
            if(temp==Reposity.get(i).getId()){
                Reposity.remove(i);
            }
        }
    }


}