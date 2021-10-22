package ung_dung_caluaclor;

import javafx.scene.chart.ScatterChart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.InputMismatchException;

@WebServlet(name = "ServletCalualor", urlPatterns = "/calualor")
public class ServletCalualor extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double firstNum = Integer.parseInt(request.getParameter("firstNumber"));
        double secondNum = Integer.parseInt(request.getParameter("secondNumber"));
        String action = request.getParameter("action");
        String a = "";
        double result = 0;
        try {
            switch (action) {
                case "+":
                    result = firstNum + secondNum;
                    break;
                case "-":
                    result = firstNum - secondNum;
                    break;
                case "*":
                        result = firstNum * secondNum;

                    break;
                case "/":
                if (secondNum != 0) {
                    result = firstNum / secondNum;
                } else {
                    throw new RuntimeException("khong chia cho 0");
                }
                break;
                default:
                    throw new RuntimeException("Invalid operation");
            }

        } catch (InputMismatchException e) {
            a = "Nhập sai định dạng";
        } catch (RuntimeException e) {
            a = e.getMessage();
        } catch (Exception e) {
            a = "Đã có lỗi xảy ra";
        }

        request.setAttribute("firstNumber", firstNum);
        request.setAttribute("secondNumber", secondNum);
        request.setAttribute("result", result);
        request.setAttribute("actionr", action);
        request.setAttribute("a", a);
        request.getRequestDispatcher("/Calualor/calualor.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/Calualor/form.jsp").forward(request, response);
    }
}
