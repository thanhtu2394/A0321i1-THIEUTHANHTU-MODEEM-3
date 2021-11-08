package controller;

import model.bean.Produst;
import model.service.serviceImp.serviceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ProdustServlet",urlPatterns = "/produst")
public class ProdustServlet extends HttpServlet {
    model.service.serviceImp.serviceImp serviceImp = new serviceImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                create(request,response);
                break;
            case "edit":
                edit(request,response);
                break;
            default:
                show(request, response);
        }
    }

    private void edit(HttpServletRequest request, HttpServletResponse response) {
        int id= Integer.parseInt(request.getParameter("id"));
        String name=request.getParameter("name");
        Double gia= Double.valueOf(request.getParameter("gia"));
        int sl= Integer.parseInt(request.getParameter("sl"));
        String cl=request.getParameter("color");
        int danhmuc= Integer.parseInt(request.getParameter("danhmuc"));
        serviceImp.edit(id,name,gia,sl,cl,danhmuc);
        try {
            show(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name=request.getParameter("name");
        Double gia= Double.valueOf(request.getParameter("gia"));
        int sl= Integer.parseInt(request.getParameter("sl"));
        String cl=request.getParameter("color");
        int danhmuc= Integer.parseInt(request.getParameter("danhmuc"));
        String thongbao=request.getParameter("thongbao");
        serviceImp.create(name,gia,sl,cl,danhmuc);
        request.setAttribute("tb",thongbao);
        show(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                response.sendRedirect("/hien_thi/create.jsp");
                break;
            case "delete":
                delete(request,response);
                break;
            case "search":
                find(request,response);
                break;
            case "edit":
                int id= Integer.parseInt(request.getParameter("id"));
                Produst produst=serviceImp.fintId(id);
                request.setAttribute("produst",produst);
                request.getRequestDispatcher("/hien_thi/update.jsp").forward(request,response);
                break;
            default:
                show(request, response);
        }
    }

    private void find(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name=request.getParameter("findNam");
        String price= request.getParameter("findPrice");
        String color=request.getParameter("findColor");
        String category=request.getParameter("findCearory");
        if(name!=""&&price!=""&&color!=""&&category!=""){
            List<Produst> produstList = new ArrayList<>();
            produstList = serviceImp.findall(name,price,color,category);
            request.setAttribute("produst", produstList);
            request.getRequestDispatcher("/hien_thi/showlist.jsp").forward(request, response);
        }
        if(name!=""&&price==""&&color==""&&category==""){
            List<Produst> produstList = new ArrayList<>();
            produstList = serviceImp.findName(name);
            request.setAttribute("produst", produstList);
            request.getRequestDispatcher("/hien_thi/showlist.jsp").forward(request, response);
        }
        if(name==""&&price!=""&&color==""&&category==""){
            List<Produst> produstList = new ArrayList<>();
            produstList = serviceImp.findPrice(price);
            request.setAttribute("produst", produstList);
            request.getRequestDispatcher("/hien_thi/showlist.jsp").forward(request, response);
        }

    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        int id= Integer.parseInt(request.getParameter("id"));
        serviceImp.delete(id);
        try {
            show(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void show(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Produst> produstList = new ArrayList<>();
        produstList = serviceImp.show();
        request.setAttribute("produst", produstList);
        request.getRequestDispatcher("/hien_thi/showlist.jsp").forward(request, response);
    }
}
