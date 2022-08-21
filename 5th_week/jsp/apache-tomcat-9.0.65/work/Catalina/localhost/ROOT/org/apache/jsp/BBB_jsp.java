/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.65
 * Generated at: 2022-08-21 05:10:14 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import java.io.File;

public final class BBB_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.oreilly.servlet.multipart.DefaultFileRenamePolicy");
    _jspx_imports_classes.add("com.oreilly.servlet.MultipartRequest");
    _jspx_imports_classes.add("java.io.File");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write(" <meta charset=\"UTF-8\">\r\n");
      out.write(" <title>BBB.jsp</title>\r\n");
      out.write(" <style type=\"text/css\">\r\n");
      out.write("    * { font-size:20pt;  }\r\n");
      out.write("    a { font-size:20pt; text-decoration:none;}\r\n");
      out.write("    a:hover{ font-size:24pt; text-decoration:underline ; color:blue ;}\r\n");
      out.write("    body{margin-left:10px;}\r\n");
      out.write(" </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("  <h2>BBB.jsp</h2>\r\n");
      out.write(" \r\n");

  String path = application.getRealPath("./storage");  
  System.out.println("공통저장경로 "+ path);
  
  int size = 1024*1024*7 ;
  DefaultFileRenamePolicy dfr=new DefaultFileRenamePolicy();
  //MultipartRequest mr=new  MultipartRequest(1request,2경로,3크기,4인코딩,5덮어씌우기dfr);
  //MultipartRequest mr=new  MultipartRequest(1request,2경로,3크기,4인코딩,);
  //MultipartRequest mr=new MultipartRequest(request,path,size,"UTF-8", dfr);
  MultipartRequest mr=new MultipartRequest(request,path,size,"UTF-8");
  
  String dsabun=mr.getParameter("sabun");
  String dtitle=mr.getParameter("title");
  String dimg=mr.getFilesystemName("fileimg");
  out.println("넘어온사번 = " + dsabun +"<br>");
  out.println("넘어온제목 = " + dtitle +"<br>");
  out.println("넘어온파일 = " + dimg +"<p>");
  File ff = mr.getFile("fileimg");
  out.println("<h2>"+dimg +" 파일크기는 "+ ff.length() +"Byte </h2>");
  

      out.write(" \r\n");
      out.write("\r\n");
      out.write("<!-- 우리가 업로드한 이미지출력 -->\r\n");
      out.write("<hr>\r\n");
      out.write("<img src=\"./storage/");
      out.print(dimg);
      out.write("\" width=400 height=250>\r\n");
      out.write("&nbsp;&nbsp;\r\n");
      out.write("\r\n");
      out.write("<a href=\"BBBdownload.jsp?fileName=");
      out.print(dimg);
      out.write("\">\r\n");
      out.write("  <img src=\"");
      out.print(request.getContextPath());
      out.write("/storage/");
      out.print(dimg);
      out.write("\" width=400 height=250>\r\n");
      out.write("</a>\r\n");
      out.write("  <p>\r\n");
      out.write("  <a href=\"AAA.jsp\">[AAA화면]</a>\r\n");
      out.write("  <a href=\"testWrite.jsp\">[입력화면]</a>\r\n");
      out.write("  <a href=\"testList.jsp\">[전체출력]</a>\r\n");
      out.write("  <a href=\"index.jsp\">[index]</a>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
