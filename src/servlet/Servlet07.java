package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.UserVo;

@WebServlet("/07")
public class Servlet07 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //변수의 범위 jsp에서 설명
        //UserVo 2개
        //1개는 request 스코프
        //1개는 session 스코프에 추가
        //JSP EL 스코프 지정을 안 하고 userVo 출력

        UserVo vo1 = new UserVo();
        vo1.setNo(10);
        vo1.setEmail("k1212keun@naver.com");

        UserVo vo2 = new UserVo();
        vo2.setNo(11);
        vo2.setEmail("itkwon12@naver.com");

        request.setAttribute("vo1", vo1);
        request.getSession(true).setAttribute("vo1", vo2);

        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/07.jsp");
        rd.forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
