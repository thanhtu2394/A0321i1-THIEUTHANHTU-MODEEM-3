package Reposity;

import entity.Product;

import java.util.ArrayList;
import java.util.List;

public class ReposityProductImp implements ReposityProduct {
   static List<Product> productList=new ArrayList();
    static{
        productList.add(new Product(1223,"thanhtu",12.4f,"danang",true));
        productList.add(new Product(1332,"thanhtu",12.4f,"danang",true));
        productList.add(new Product(1423,"thanhtu",12.4f,"danang",false));
        productList.add(new Product(1532,"thanhtu",12.4f,"danang",true));
        productList.add(new Product(1612,"thanhtu",12.4f,"danang",true));
    }

    @Override
    public List<Product> findall() {

        return productList;
    }

    @Override
    public void update(Product product) {
        productList.add(product);
    }

    @Override
    public List<Product> find(String tenSanPham) {
List<Product> a=new ArrayList<>();
        for (Product index:productList
             ) {
            if(tenSanPham.equals(index.getTenSanPham())){

                a.add(index);
                return a;
            }
        }
        return null;
    }

    @Override
    public void delete(int sp) {

       for(int i=0;i<productList.size();i++){
           if(sp==productList.get(i).getMaSanPham()){
               productList.remove(i);

           }
       }


    }

    @Override
    public Product findid(int id) {
        for(int i=0;i<productList.size();i++){
            if(id==productList.get(i).getMaSanPham()){
              return productList.get(i);

            }
        }
        return null;
    }

    @Override
    public void edit(int msp, String tsp, float gia, String xuatsu, boolean ht) {
        for (int i = 0; i < productList.size(); i++) {
            if (msp == productList.get(i).getMaSanPham()) {
                productList.get(i).setTenSanPham(tsp);
                productList.get(i).setGia(gia);
                productList.get(i).setXuatSu(xuatsu);
                productList.get(i).setHienTrang(ht);
            }
        }
    }
}
