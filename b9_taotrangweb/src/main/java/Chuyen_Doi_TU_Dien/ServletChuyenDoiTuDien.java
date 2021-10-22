package Chuyen_Doi_TU_Dien;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "ServletChuyenDoiTuDien",urlPatterns = "/tudien")
public class ServletChuyenDoiTuDien extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String td=request.getParameter("td");
        Map<String,String> tudien=new HashMap<>();
        tudien.put("one","mot");
        tudien.put("two","hai");
        tudien.put("there","ba");
        tudien.put("four","bon");
        tudien.put("five","nam");
      String result=tudien.get(td);
      request.setAttribute("result",result);
      request.getRequestDispatcher("/chuyen_doi_tu_dien/ChuyenDoiTuDien.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.sendRedirect("/chuyen_doi_tu_dien/ChuyenDoiTuDien.jsp");
    }
}
