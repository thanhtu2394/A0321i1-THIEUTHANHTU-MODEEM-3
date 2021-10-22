package entity;

public class Product {
    private int MaSanPham;
    private String TenSanPham;
    private float Gia;
    private String XuatSu;
    private Boolean HienTrang;

    public Boolean getHienTrang() {
        return HienTrang;
    }

    public void setHienTrang(Boolean hienTrang) {
        HienTrang = hienTrang;
    }

    public Product(int maSanPham, String tenSanPham, float gia, String xuatSu, Boolean hienTrang) {
        MaSanPham = maSanPham;
        TenSanPham = tenSanPham;
        Gia = gia;
        XuatSu = xuatSu;
        HienTrang = hienTrang;
    }

    public Product(){};

    public int getMaSanPham() {
        return MaSanPham;
    }

    public void setMaSanPham(int maSanPham) {
        MaSanPham = maSanPham;
    }

    public String getTenSanPham() {
        return TenSanPham;
    }

    public void setTenSanPham(String tenSanPham) {
        TenSanPham = tenSanPham;
    }

    public float getGia() {
        return Gia;
    }

    public void setGia(float gia) {
        Gia = gia;
    }

    public String getXuatSu() {
        return XuatSu;
    }

    public void setXuatSu(String xuatSu) {
        XuatSu = xuatSu;
    }
}
