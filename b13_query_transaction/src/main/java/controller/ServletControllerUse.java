package controller;

import bin.User;
import service.serviceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@WebServlet(name = "ServletControllerUse",urlPatterns = "/user1")
public class ServletControllerUse extends HttpServlet {
    serviceImp serviceImp = new serviceImp();

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
                edit1(request,response);
                break;
            default:
                select(request,response);
        }
    }

    private void edit1(HttpServletRequest request, HttpServletResponse response) {
        int id= Integer.parseInt(request.getParameter("id"));
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String country=request.getParameter("country");
        serviceImp.edit(id,name,email,country);
        try {
            select(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id= Integer.parseInt(request.getParameter("id"));
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String country=request.getParameter("country");
        serviceImp.create( id, name, email, country);
        select(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                response.sendRedirect("/call_storepro/update.jsp");
                break;
            case "delete":
                delete(request,response);
                break;
            case "search":
                search1(request,response);
                break;
            case "sapxep":
                sapxep(request,response);
                break;
            case "edit":
                int id= Integer.parseInt(request.getParameter("id"));
                request.setAttribute("id",id);
                request.getRequestDispatcher("/call_storepro/edit.jsp").forward(request,response);
                break;
            default:
                select(request,response);
        }
        }

    private void sapxep(HttpServletRequest request, HttpServletResponse response) {
        List<User> userList=serviceImp.select();
        Collections.sort(userList, new Comparator<User>() {
            @Override
            public int compare(User o1, User o2) {
                return o1.getName().compareTo(o2.getName());
            }
        });
        request.setAttribute("userList", userList);
        try {
            request.getRequestDispatcher("/call_storepro/quan_ly_user.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void search1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchcontry=request.getParameter("country");
        List<User> userList=new ArrayList<>();
        userList=serviceImp.search(searchcontry);
        request.setAttribute("userList", userList);
        request.getRequestDispatcher("/call_storepro/quan_ly_user.jsp").forward(request, response);

    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        int id= Integer.parseInt(request.getParameter("id"));
        serviceImp.delelte(id);
        try {
            select(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void select(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> userList=serviceImp.selectCall();
        request.setAttribute("userList", userList);
        request.getRequestDispatcher("/call_storepro/quan_ly_user.jsp").forward(request, response);
    }
}
