package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/02")
public class Servlet02 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //수치값을 넘겨주고 JSP에서 EL을 이용해서 작업 수행 예제
        int iValue = 10;
        float fValue = 3.14159f;

        request.setAttribute("iVal", iValue);
        request.setAttribute("fVal", fValue);

        request.setAttribute("reqVal", "abcdefgh");
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/02.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
