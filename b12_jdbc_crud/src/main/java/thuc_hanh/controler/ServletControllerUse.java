package thuc_hanh.controler;

import thuc_hanh.bin.User;
import thuc_hanh.service.serviceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletControllerUse",urlPatterns = "/user")
public class ServletControllerUse extends HttpServlet {
    serviceImp serviceImp = new serviceImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
//                create(request, request);
                break;
            default:
                select(request,response);
        }
        }

    private void select(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> userList=serviceImp.select();
        request.setAttribute("userList", userList);
        request.getRequestDispatcher("/thuc_hanh/quan_ly_user.jsp").forward(request, response);
    }
}
