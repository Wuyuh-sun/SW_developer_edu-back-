package net.hb.common;

import java.util.ArrayList ;
import java.sql.* ;
import java.util.Date ;

import com.oreilly.servlet.MultipartRequest ;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy ;
import java.io.File ;

public class Global {
	 public Connection CN; //db서버연결정보, 명령어생성할때 참조
	 public Statement ST; //명령어생성 ST = CN.createStatement()
	 public PreparedStatement PST; //속도가빠름 PST = CN.prepareStatement("insert~/update~")
	 public ResultSet RS; //select조회한결과 RS=ST.executeQuery("select~~")
	 
	 public int Gsabun, Gpay, Gcode ;
	 public String Gname, Gtitle, Gemail, Ggender ;
	 public java.util.Date  Gwdate;
	 
	 public int Ghit, Gtotal, Stotal ;
	 public String msg ;  //msg="dml쿼리문기술 insert~/select~/update~/delete~"
	 public String data ;  //data=request.getParameter("idx");  
	 public String Gimage; //그림필드 img_file_name
	 public MultipartRequest mr ;
	 public DefaultFileRenamePolicy dr;
	 
}//Global class END


