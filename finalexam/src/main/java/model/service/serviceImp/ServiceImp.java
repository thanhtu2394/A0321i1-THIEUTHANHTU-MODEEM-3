package model.service.serviceImp;

import model.bean.BenhNhan;
import model.reposi.reposiImp.ReposiImp;
import model.service.Service;

import java.util.List;

public class ServiceImp implements Service {
    ReposiImp reposiImp=new ReposiImp();


    @Override
    public List<BenhNhan> show() {
        return reposiImp.show();
    }

    @Override
    public void delete(int id) {
        reposiImp.delete(id);
    }

    @Override
    public BenhNhan findId(int id) {
        return reposiImp.findId(id);
    }

    @Override
    public void update(int idba, int idbenhnhan, String namebenhnhan, String ngaynhapvien, String ngayravien, String lydo) {
        reposiImp.update(idba,idbenhnhan,namebenhnhan,ngaynhapvien,ngayravien,lydo);
    }
}
