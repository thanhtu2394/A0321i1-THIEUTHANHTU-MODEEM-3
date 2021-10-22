package controller;

import entity.Product;
import service.ServiceProductImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletProductKh", urlPatterns = {"/product"})
public class ServletProductKh extends HttpServlet {
    ServiceProductImp serviceProductImp = new ServiceProductImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("act");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "themmoi":
                update(request,response);
                break;
            case "edit":
                edit(request,response);
                break;

            default:
                view(request, response);
        }

    }



    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("act");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "themmoi":
                response.sendRedirect("UpdateProduct.jsp");
                break;
            case "find":
              find(request,response);
              break;
            case "delete":
                delete(request,response);
                break;
            case "hienthi":
                view(request, response);
                break;
            case "edit":
                int id= Integer.parseInt(request.getParameter("id"));
                Product product=serviceProductImp.findid(id);
                request.setAttribute("product",product);
                request.getRequestDispatcher("/EditProduct.jsp").forward(request,response);
                break;
            default:
                view(request, response);
        }
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int sp= Integer.parseInt(request.getParameter("id"));
        serviceProductImp.delete(sp);
        view(request,response);
    }

    private void find(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tenSanPham=request.getParameter("tensanpham");
        serviceProductImp.find(tenSanPham);
        List<Product> productList = serviceProductImp.find(tenSanPham);
        request.setAttribute("product", productList);
        request.getRequestDispatcher("/ViewProDuct.jsp").forward(request, response);
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int msp = Integer.parseInt(request.getParameter("MSP"));
        String tsp = request.getParameter("TSP");
        float gia = Float.parseFloat(request.getParameter("GIA"));
        String xuatsu = request.getParameter("XUATSU");
        boolean ht = Boolean.parseBoolean(request.getParameter("HT"));
        Product product = new Product(msp, tsp, gia, xuatsu, ht);
        serviceProductImp.update(product);
        view(request, response);

    }

    private void view(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList = serviceProductImp.findAll();
        request.setAttribute("product", productList);
        request.getRequestDispatcher("/ViewProDuct.jsp").forward(request, response);
    }
    private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int msp = Integer.parseInt(request.getParameter("MSP"));
        String tsp = request.getParameter("TSP");
        float gia = Float.parseFloat(request.getParameter("GIA"));
        String xuatsu = request.getParameter("XUATSU");
        boolean ht = Boolean.parseBoolean(request.getParameter("HT"));
        serviceProductImp.edit(msp,tsp,gia,xuatsu,ht);
        view(request,response);

    }
}
