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


@WebServlet("/testInsert.do") 
public class TestInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       	
	public  void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doUser(request, response);
		System.out.println("\nTestInsertController.java doGet메소드 12:16 1:45 ");
	}//end

	public  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doUser(request, response);
		System.out.println("\nTestInsertController.java doPost메소드 12:16 1:45 ");
	}//end
	
	public  void doUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		 //TestInsertController서블릿문서 단독실행금지 실행하면 에러발생
		 //jsp교재 533페이지 32번라인참고   	 
		 ServletContext  ct  = this.getServletContext(); //application대신 ct로접근
		 String path  = ct.getRealPath("storage");  
		 System.out.println("파일저장경로 " + path);
		 
		 int size = 1024*1024*7; 
		 MultipartRequest mr = new MultipartRequest(request,path,size,"UTF-8");
		
		  //request대신 mr개체명으로 변경
	    String a = mr.getParameter("title");
	    int b = Integer.parseInt(mr.getParameter("pay"));
	    String c = mr.getParameter("gender");
	    String d= mr.getFilesystemName("file1"); 
	    
	    System.out.println("TestInsertContrller.java 넘어온제목 = "+ a);
	    System.out.println("TestInsertContrller.java 넘어온급여 = "+ b);
	    System.out.println("TestInsertContrller.java 넘어온성별 = "+ c);
	    System.out.println("TestInsertContrller.java 넘어온그림 = "+ d);
	    
	    TestSQL ts = new TestSQL();
	    ts.dbInsert(a, b, c, d);
	    response.sendRedirect("testList.jsp");
	    
		out.println("<hr><h2>");
		out.println("<a href='testList.jsp'>[testList]</a>");
		out.println("<a href='testWrite.jsp'>[test등록]</a>");
		out.println("<a href='#'>[로그인]</a>");
		out.println("</h2>");
	}//end

}//TestInsertController class END




