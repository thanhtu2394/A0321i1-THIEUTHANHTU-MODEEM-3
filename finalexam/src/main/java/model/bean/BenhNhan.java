package model.bean;

public class BenhNhan {
    private int idBenhAn;
    private int idBenhNhan;
    private String nameBenhNhan;
    private String ngayNhapVien;
    private String ngayRaVien;
    private String lyDo;
    private String nameBenhAn;

    public BenhNhan(int idBenhAn, int idBenhNhan, String nameBenhNhan, String ngayNhapVien, String ngayRaVien, String lyDo, String nameBenhAn) {
        this.idBenhAn = idBenhAn;
        this.idBenhNhan = idBenhNhan;
        this.nameBenhNhan = nameBenhNhan;
        this.ngayNhapVien = ngayNhapVien;
        this.ngayRaVien = ngayRaVien;
        this.lyDo = lyDo;
        this.nameBenhAn = nameBenhAn;
    }

    public BenhNhan() {
    }

    public int getIdBenhAn() {
        return idBenhAn;
    }

    public void setIdBenhAn(int idBenhAn) {
        this.idBenhAn = idBenhAn;
    }

    public int getIdBenhNhan() {
        return idBenhNhan;
    }

    public void setIdBenhNhan(int idBenhNhan) {
        this.idBenhNhan = idBenhNhan;
    }

    public String getNameBenhNhan() {
        return nameBenhNhan;
    }

    public void setNameBenhNhan(String nameBenhNhan) {
        this.nameBenhNhan = nameBenhNhan;
    }

    public String getNgayNhapVien() {
        return ngayNhapVien;
    }

    public void setNgayNhapVien(String ngayNhapVien) {
        this.ngayNhapVien = ngayNhapVien;
    }

    public String getNgayRaVien() {
        return ngayRaVien;
    }

    public void setNgayRaVien(String ngayRaVien) {
        this.ngayRaVien = ngayRaVien;
    }

    public String getLyDo() {
        return lyDo;
    }

    public void setLyDo(String lyDo) {
        this.lyDo = lyDo;
    }

    public String getNameBenhAn() {
        return nameBenhAn;
    }

    public void setNameBenhAn(String nameBenhAn) {
        this.nameBenhAn = nameBenhAn;
    }
}
//id_benhan int,
//        id_benhnhan int not null,
//        name_benhnhan varchar(50),
//        ngay_nhap_vien varchar(50),
//        ngay_ra_vien varchar(50),
//        ly_do_nhap_vien varchar(50),