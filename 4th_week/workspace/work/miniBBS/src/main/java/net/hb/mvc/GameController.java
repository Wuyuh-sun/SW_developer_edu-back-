package net.hb.mvc;

import java.io.IOException;
import java.io.PrintWriter; //추가함

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/game")
public class GameController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   doUser(request,response); //꼭호출기술하세요
	}//end

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 doUser(request,response); //꼭호출기술하세요
	}//end

	public void doUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<h2>GameController.java</h2>");
		out.println("<img src=images/aaa.gif>");  
		out.println("<img src=images/aaa.gif>");
		out.println("<img src=images/aaa.gif>");
		out.println("<img src=images/aaa.gif>");
		out.println("<img src=images/aaa.gif> <p>");
		
		//String mytitle =  request.getParameter("title");
		//String mypay =  request.getParameter("pay");
		
		out.println("<h3>");
		//out.println("game.jsp문서에서 넘어온 제목 = " + mytitle +"<br>");
		//out.println("game.jsp문서에서 넘어온 나이 = " + mypay +"<br>");
		out.println("<a href='index.jsp'>[index]</a>");
		out.println("<a href='testWrite.jsp'>[test등록]</a>");
		out.println("<a href='testList.jsp'>[testList]</a>");
		out.println("<a href='game.jsp'>[game등록]</a>");
		out.println("</h3>");
	}//end

}//class END









