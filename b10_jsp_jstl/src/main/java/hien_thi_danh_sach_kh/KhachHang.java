package hien_thi_danh_sach_kh;

import java.util.Date;

public class KhachHang {
    private String ten;
    private int ngaySinh;
    private String diaChi;
    private String Img;
    public KhachHang(){};

    public KhachHang(String ten, int ngaySinh, String diaChi, String img) {
        this.ten = ten;
        this.ngaySinh = ngaySinh;
        this.diaChi = diaChi;
        Img = img;
    }


    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public int getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(int ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getImg() {
        return Img;
    }

    public void setImg(String img) {
        Img = img;
    }
}
