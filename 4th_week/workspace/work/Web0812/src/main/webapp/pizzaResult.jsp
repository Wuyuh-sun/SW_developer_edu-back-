<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ include file="./ssi.jsp" %>

<%
	String phone=request.getParameter("phone");
	System.out.println("phone="+phone);
	
	//Context ctx=new InitialContext();
	//DataSource ds=(DataSource)ctx.lookup("java:comp/env/jdbc/myoracle");
	//Connection con=ds.getConnection();
	
	String sql=" select * from pizza_user where  phone=?";
	PST=CN.prepareStatement(sql);
	PST.setString(1,phone);
	RS=PST.executeQuery();
	
	int idx=0;
	String name="", addr="";
	while(RS.next()==true){
		idx=RS.getInt("pnum");
		name=RS.getString("name");
		addr=RS.getString("addr");
	}

%>
<%=idx%>|<%=name%>|<%=addr%>

     




