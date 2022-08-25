package net.hb.mvc;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList; //추가

import javax.servlet.RequestDispatcher; //추가
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hb.common.TestBean;
import net.hb.common.TestDAO; //추가


@WebServlet("/nodeList")
public class TestSelectController extends HttpServlet {
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
	     
	     System.out.println("<h2>TestSelectController.java</h2>");
	     
	     TestDAO dao = new TestDAO();
	     ArrayList<TestBean> LG = dao.testSelectAll();
	     //RequestDispatcher dis = request.getRequestDispatcher("testList.jsp");
	     //dis.forward(request, response);
	     //금지response.sendRedirect("testList.jsp");
	     //testList.jsp문서 완전히 바꿔야 함
	}//end
}//TestSelectController class END
