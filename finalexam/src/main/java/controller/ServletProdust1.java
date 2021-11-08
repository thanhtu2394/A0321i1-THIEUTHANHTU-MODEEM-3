package controller;

import model.bean.BenhNhan;
import model.service.serviceImp.ServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServletProdust1",urlPatterns = {"","/sanpham"})
public class ServletProdust1 extends HttpServlet {
    ServiceImp serviceImp=new ServiceImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        if(action==null){
            action="";
        }
        switch (action){
            case "edit":
               edit(request,response);
               break;

            default:
                show(request,response);
        }
    }

    private void edit(HttpServletRequest request, HttpServletResponse response) {
        int idba= Integer.parseInt(request.getParameter("idba"));
        int idbn= Integer.parseInt(request.getParameter("idbn"));
        String namebn=request.getParameter("name");
        String ngaynhapvien=request.getParameter("ngaynhapvien");
        String ngayravien=request.getParameter("ngayravien");
        String lydo=request.getParameter("lydo");
        serviceImp.update(idba,idbn,namebn,ngaynhapvien,ngayravien,lydo);
        show(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        if(action==null){
            action="";
        }
        switch (action){
            case "create":
                break;
            case "delete":
                delete(request,response);
                break;
            case "edit":
                int id= Integer.parseInt(request.getParameter("id"));
                BenhNhan benhNhan=serviceImp.findId(id);
                request.setAttribute("benhnhan",benhNhan);
                request.getRequestDispatcher("/hien_thi/edit.jsp").forward(request,response);
                break;
            default:
                show(request,response);
        }
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        int id= Integer.parseInt(request.getParameter("id"));
        serviceImp.delete(id);
        show(request,response);
    }

    private void show(HttpServletRequest request, HttpServletResponse response) {
        List<BenhNhan> benhNhanList=new ArrayList<>();
        benhNhanList=serviceImp.show();
        request.setAttribute("benhnhan",benhNhanList);
        try {
            request.getRequestDispatcher("/hien_thi/show.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
