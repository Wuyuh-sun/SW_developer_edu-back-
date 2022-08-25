package net.hb.common;

import java.util.Date;
import java.util.ArrayList;
import java.text.SimpleDateFormat;
import java.sql.*;

public class TestDAO  extends Testssi{ //Data Access Object
	
 public TestDAO() {
   try {	  
    CN=Testssi.getConnection();
    System.out.println("TestDAO생성자 db연결성공 8-25-목요일 11:14분 출력 ") ; 
   }catch(Exception e){ System.out.println(e); }
 }//end

 
 public void testInsertSave(String dtitle, int dpay, int dcode) {
  try {
 	msg="insert into test(title,pay,wdate,code) values(?,?,sysdate,?)";
 	PST=CN.prepareStatement(msg);
 	   PST.setString(1, dtitle);
 	   PST.setInt(2, dpay);
 	   PST.setInt(3, dcode);
 	PST.executeUpdate();
 	System.out.println("TestDAO.java testInsertSave(1,2,3)함수 저장성공\n");
  }catch (Exception e){	System.out.println("저장에러 " + e) ; }
 }//testInsertSave함수 end

 
 public  ArrayList<TestBean>  testSelectAll() {
  ArrayList<TestBean> alist = new ArrayList<TestBean>();	 
  try {
	msg="select * from test order by code";  //전체출력
	ST=CN.createStatement();
	RS=ST.executeQuery(msg);
	while(RS.next()==true) {
	   TestBean bean = new TestBean();
	    bean.setTitle(RS.getString("title"));
	    bean.setPay(RS.getInt("pay"));
	    bean.setWdate(RS.getDate("wdate"));
	    bean.setCode(RS.getInt("code"));
	    alist.add(bean); //냉장고에 차곡차곡
	}//while end
  }catch (Exception e){	}
   return alist; 
 }//end

 
 
 public TestBean testDetail(int dcode) {
	TestBean bean = new TestBean();	 
	try {
		msg="select * from test where code = " + dcode;  //한건상세
		ST=CN.createStatement();
		RS=ST.executeQuery(msg);
		if(RS.next()==true) { 
		   bean.setTitle(RS.getString("title"));
		   bean.setPay(RS.getInt("pay"));
		   bean.setWdate(RS.getDate("wdate"));
		   bean.setCode(RS.getInt("code"));
		}//if end
	 }catch (Exception e){	}
	return bean; 
 }//end

 
 public void testDelete(int dcode) {
  try { //한건삭제 testDeleteSave.jsp
	 msg="delete  from test where code=" + dcode ;	
	 ST=CN.createStatement();
	 ST.executeUpdate(msg);
	 System.out.println(dcode + " 삭제 성공");
  }catch (Exception e){	}	
 }//end 
 

 public TestBean testPreUpdate(int dcode) {
	TestBean bean = new TestBean();	 
	try {
		msg="select * from test where code = " + dcode;  //한건수정데이터가져오기 
		ST=CN.createStatement();
		RS=ST.executeQuery(msg);
		if(RS.next()==true) { 
		   bean.setTitle(RS.getString("title"));
		   bean.setPay(RS.getInt("pay"));
		   bean.setWdate(RS.getDate("wdate"));
		   bean.setCode(RS.getInt("code"));
		}//if end
	 }catch (Exception e){	}
	return bean; 
 }//end 
 
 
 public void testUpdateSave(String dtitle, int dpay, int dcode) {
   try { //한건진짜수정 testEditSave.jsp
	 msg="update test set title=?, pay=?, wdate=sysdate where code=?";
	 PST=CN.prepareStatement(msg);
	   PST.setString(1, dtitle);
	   PST.setInt(2, dpay);
	   PST.setInt(3, dcode);
	 PST.executeUpdate();
   }catch (Exception e){	}	
 }//end 
 
}//TestDAO class END




