package Reposity;

import entity.ModelKh;

import java.util.List;

public interface ReposityKH {
List<ModelKh> findAll();
void update(ModelKh object);
ModelKh find(String id);
void edit(String id,String name);
void delete(String id);
}
