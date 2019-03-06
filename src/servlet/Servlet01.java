package servlet;

import vo.UserVo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/01")
public class Servlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청에 속성을 담고
		//JSP로 포워딩했을 때
		//EL로 객체를 어떻게 출력할 수 있는 지 예제

		//Java 기본 객체들
		int iValue = 2019;
		float fValue = 3.14159f;
		String sValue = "Servlet";
		boolean bValue = true;
		Object nullValue = null;

		//사용자 정의 객체들
		UserVo vo = new UserVo();
		vo.setNo(100);
		vo.setEmail("itkwon12@naver.com");

		//request에 속성을 추가 JSP로 포워딩
		request.setAttribute("iVal", iValue);
		request.setAttribute("fVal", fValue);
		request.setAttribute("sVal", sValue);
		request.setAttribute("bVal", bValue);
		request.setAttribute("nullVal",nullValue);

		request.setAttribute("userVo",vo);

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/01.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
