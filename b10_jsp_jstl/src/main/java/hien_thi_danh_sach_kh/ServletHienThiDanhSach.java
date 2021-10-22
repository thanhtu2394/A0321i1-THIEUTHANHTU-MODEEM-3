package hien_thi_danh_sach_kh;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServletHienThiDanhSach", urlPatterns = "/khachhang")
public class ServletHienThiDanhSach extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
List<KhachHang> khachHangList=new ArrayList<>();
khachHangList.add(new KhachHang("thieu",12/12/1994,"danang","https://gamek.mediacdn.vn/133514250583805952/2021/8/24/pokemon-journeys-pikachu4-1629779648741323322830.jpg"));
khachHangList.add(new KhachHang("thanh",2/12/1994,"danang","https://gamek.mediacdn.vn/133514250583805952/2021/8/24/pokemon-journeys-pikachu4-1629779648741323322830.jpg"));
khachHangList.add(new KhachHang("tu",11/12/1994,"danang","https://gamek.mediacdn.vn/133514250583805952/2021/8/24/pokemon-journeys-pikachu4-1629779648741323322830.jpg"));
khachHangList.add(new KhachHang("thu",31/12/1994,"danang","https://gamek.mediacdn.vn/133514250583805952/2021/8/24/pokemon-journeys-pikachu4-1629779648741323322830.jpg"));
request.setAttribute("khachhangList",khachHangList);
request.getRequestDispatcher("/hien_thi_khach_hang/HienThiKhachHang.jsp").forward(request,response);
    }
}
