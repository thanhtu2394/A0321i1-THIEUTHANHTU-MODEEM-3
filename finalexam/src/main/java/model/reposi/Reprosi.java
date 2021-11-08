package model.reposi;

import model.bean.BenhNhan;

import java.util.List;

public interface Reprosi {
    List<BenhNhan> show();

    void delete(int id);

    BenhNhan findId(int id);

    void update(int idba, int idbenhnhan, String namebenhnhan, String ngaynhapvien, String ngayravien, String lydo);
}

