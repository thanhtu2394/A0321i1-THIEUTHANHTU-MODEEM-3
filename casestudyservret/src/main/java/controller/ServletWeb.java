package controller;

import model.bean.Customer;
import model.service.serviceImp.serviceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServletWeb", urlPatterns = {"","/rs"})
public class ServletWeb extends HttpServlet {
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
            case "delete":
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
        String briday=request.getParameter("briday");
        int gender= Integer.parseInt(request.getParameter("gender"));
        String id_card=request.getParameter("id_card");
        String phone=request.getParameter("phone");
        String email=request.getParameter("email");
        String address=request.getParameter("address");
        int loaikhach= Integer.parseInt(request.getParameter("loaikhach"));
        serviceImp.edit(id,name,briday,gender,id_card,phone,email,address,loaikhach);
        try {
            show(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id= Integer.parseInt(request.getParameter("id"));
        String name=request.getParameter("name");
        String briday=request.getParameter("briday");
       int gender= Integer.parseInt(request.getParameter("gender"));
        String id_card=request.getParameter("id_card");
        String phone=request.getParameter("phone");
        String email=request.getParameter("email");
        String address=request.getParameter("address");
        int loaikhach= Integer.parseInt(request.getParameter("loaikhach"));
serviceImp.create(id,name,briday,gender,id_card,phone,email,address,loaikhach);
show(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)  {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                try {
                    response.sendRedirect("/case/create.jsp");
                } catch (IOException e) {
                    e.printStackTrace();
                }
                break;
            case "edit":
                int id= Integer.parseInt(request.getParameter("id"));
                Customer customer=serviceImp.findId(id);


                    request.setAttribute("a",customer);
                try {
                   request.getRequestDispatcher("/case/edit.jsp").forward(request,response);
                } catch (IOException e) {
                    e.printStackTrace();
                } catch (ServletException e) {
                    e.printStackTrace();
                }

                break;
            case "delete":
               delete(request,response);
               break;
            case "searchId":
                try {
                    findId(request,response);
                } catch (ServletException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                break;
            default:
                try {
                    show(request, response);
                } catch (ServletException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }
        }
    }

    private void findId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id= Integer.parseInt(request.getParameter("findId"));
        Customer customer=serviceImp.findId(id);
        List<Customer> customerList=new ArrayList<>();
        customerList.add(customer);
        request.setAttribute("customerList",customerList);
        request.getRequestDispatcher("/case/show.jsp").forward(request,response);
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        int id1= Integer.parseInt(request.getParameter("id"));
        serviceImp.delete(id1);
        try {
            show(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void show(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customerList = new ArrayList<>();
        customerList = serviceImp.showCustomer();
        request.setAttribute("customerList",customerList);
        request.getRequestDispatcher("/case/show.jsp").forward(request,response);
    }
}
