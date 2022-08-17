package net.hb.mvc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext; //application원형
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest ;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.hb.test.TestSQL;


@WebServlet("/test1234.do") 
public class TestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public  void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doUser(request, response); //반드시호출
	}//end

	public  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doUser(request, response);  //반드시호출
	}//end
	
	public  void doUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.println("<img src=images/bar.gif><p>");
		out.println("<img src=images/bar.gif><p>");
		//TestController서블릿문서
	    
	  out.println("<h2>");
		out.println("<a href='index.jsp'>[index]</a>");
		out.println("<a href='testWrite.jsp'>[test등록]</a>");
		out.println("<a href='login.jsp'>[로그인]</a>");
		out.println("</h2>");
	}//end

}//TestController class END




