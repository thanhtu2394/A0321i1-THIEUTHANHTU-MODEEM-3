package controller;

import entity.ModelKh;
import service.ServiceKHimplement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletController", urlPatterns = {"/thanhtu",""} )
public class ServletModelKH extends HttpServlet {
    ServiceKHimplement serviceKHimplement=new ServiceKHimplement();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        switch (action){
            case "update":
              update(request,response);
                break;
            case "edit":
                edit1(request,response);
                break;


            default:show(request,response);

        }
    }




    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String action=request.getParameter("action");
if(action == null){
    action="";
}
switch (action){
    case "update":
        response.sendRedirect("update.jsp");
    break;
    case "edit":
        String idedit= String.valueOf(Integer.parseInt(request.getParameter("id")));
        ModelKh modelkh= (ModelKh) serviceKHimplement.find(idedit);
        request.setAttribute("modelkh",modelkh);
        request.getRequestDispatcher("/edit.jsp").forward(request,response);
        break;
    case "delete":
        delete(request,response);
        break;
    default:show(request,response);

}

    }



    public void show(HttpServletRequest request, HttpServletResponse response){
        List<ModelKh> modelkh= serviceKHimplement.findAll();
        request.setAttribute("modelkh1",modelkh);
        try {
            request.getRequestDispatcher("ModelKh.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void edit1(HttpServletRequest request, HttpServletResponse response) {
        String id= request.getParameter("id");
        String name=request.getParameter("name1");
        serviceKHimplement.edit(id,name);
        show(request,response);
    }
    private void delete(HttpServletRequest request, HttpServletResponse response) {
        String id= request.getParameter("id");
        serviceKHimplement.delete(id);
        show(request,response);
    }

    private void update(HttpServletRequest request, HttpServletResponse response) {
int id= Integer.parseInt(request.getParameter("id"));
String name=request.getParameter("name");
String email=request.getParameter("email");
String address=request.getParameter("address");
ModelKh modelKh=new ModelKh(id,name,email,address);
serviceKHimplement.update(modelKh);
show(request,response);

    }
}
