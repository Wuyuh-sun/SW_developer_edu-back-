package net.hb.mvc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hb.common.TestDAO;


@WebServlet("/nodeAdd")
public class TestInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doTest(request, response);
    	System.out.println("doGet방식전달( request, response)");
	}//end
	
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doTest(request, response);
    	System.out.println("doPost방식전달( request, response)");
	}//end
	
	public void doTest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html; charset=UTF-8");
	     PrintWriter out = response.getWriter();
	     
	     out.println("<img src='images/bar.gif'> <p>");
	     out.println("<img src='images/bar.gif'> <p>");
	     out.println("<img src='images/bar.gif'> <p>");
	     
	     System.out.println("<h2>TestInsertController.java</h2>");
	     String Gtitle = request.getParameter("title");
	     int Gpay = Integer.parseInt(request.getParameter("pay"));
	     int Gcode = Integer.parseInt(request.getParameter("code"));
	     System.out.println("제목데이터 = "+ Gtitle );
	     System.out.println("급여데이터 = "+ Gpay );
	     System.out.println("코드데이터 = "+ Gcode );
	     
	     //net.hb.common팩키지의 TestDAO클래스 사용
	     TestDAO dao = new TestDAO();
	     dao.testInsertSave(Gtitle, Gpay, Gcode);
	     System.out.println("서블릿문서 TestInsertController class 저장완료");
	     out.println("<h2>서블릿문서 TestInsertController class 저장완료 </h2>");
	     response.sendRedirect("testList.jsp");
	     out.println("<h2><a href=testWrite.jsp>[등록testWrite]</a></h2>");
	     
	}//end
}//TestInsertController class END
