package controller;

import model.bean.ServiceC;
import model.service.serviceImp.serviceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletService",urlPatterns = "/service")
public class ServletService extends HttpServlet {
    model.service.serviceImp.serviceImp serviceImp=new serviceImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        if(action==null){
            action="";
        }
        switch (action){
            case "create":
                create(request,response);
                break;
            default:
                List<ServiceC> serviceCList= serviceImp.showService();
                request.setAttribute("service",serviceCList);
                request.getRequestDispatcher("/case/showservice.jsp").forward(request,response);
                break;

        }
    }

    private void create(HttpServletRequest request, HttpServletResponse response) {
        int id= Integer.parseInt(request.getParameter("id"));
        String name=request.getParameter("name");
        int area= Integer.parseInt(request.getParameter("area"));
        double cost= Double.parseDouble(request.getParameter("cost"));
        int people= Integer.parseInt(request.getParameter("people"));
        int kieuthue= Integer.parseInt(request.getParameter("kieuthue"));
        int loaithue= Integer.parseInt(request.getParameter("loaithue"));
        String phong=request.getParameter("phong");
        String mota=request.getParameter("mota");
        double beboi= Double.parseDouble(request.getParameter("beboi"));
        int sotang= Integer.parseInt(request.getParameter("sotang"));
        serviceImp.createservice(id,name,area,cost,people,kieuthue,loaithue,phong,mota,beboi,sotang);
        List<ServiceC> serviceCList= serviceImp.showService();
        request.setAttribute("service",serviceCList);
        try {
            request.getRequestDispatcher("/case/showservice.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        if(action==null){
            action="";
        }
        switch (action){
            case "create":
                response.sendRedirect("/case/servicecreate.jsp");
                break;
            default:
                List<ServiceC> serviceCList= serviceImp.showService();
                request.setAttribute("service",serviceCList);
                request.getRequestDispatcher("/case/showservice.jsp").forward(request,response);
                break;

        }

    }
}
