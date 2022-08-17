package net.hb.test;

import java.sql.DriverManager;
import java.util.ArrayList;
import net.hb.common.DB;
import net.hb.common.Global;

public class TestSQL extends Global {
	
	 public TestSQL() {
	   CN = DB.getConnection(); //주석풀어야 db서버연결해야 데이터처리가능
	   //Context initContext = new InitialContext();
	 	 //Context envContext = (Context)initContext.lookup("java:comp/env/");
	 	 //DataSource ds = (DataSource)envContext.lookup("jdbc/snow");
	 	 //CN  = ds.getConnection(); 
	 }//end
	 
	 //TestInsertController.java서블릿문서에서 호출
	 public void dbInsert(String a, int b, String gen, String img) { //제목,급여,성별,이미지
		 try {
		   msg =" insert into test values(?, ?, ?, sysdate, test_seq.nextVal, ?) " ;
		   PST = CN.prepareStatement(msg);
		   			PST.setString(1, a);
		   			PST.setInt(2, b);
		   			PST.setString(3, gen);
		   			PST.setString(4, img);
		   PST.executeUpdate();
		   System.out.println("1-18-월요일 TestSQL.java문서 dbInsert(1,2,3,4) 저장성공");
		 }catch(Exception e){System.out.println("dbInsert메소드 저장실패 " + e.toString());}
	 }//end
	 
	 
	 
	 public void dbInsert(TestDTO dto) { //권장
		 try {
		   msg =" insert into test values(?, ?, ?, sysdate, test_seq.nextVal, ?) " ;
		 }catch(Exception e){System.out.println("신규에러 " + e.toString());}
	 }//end
	 
	 public void dbDelete(int data) {
		try {
			ST = CN.createStatement();
			msg = "delete from test where code = " + data ;
			ST.executeUpdate(msg);
		}catch(Exception e){System.out.println("삭제에러 " + e.toString());}
	 }//end
	 
	 public void dbEdit(String a, int b, String gen,  int code) { //제목,급여,성별,날짜,그림은수정안함,code
		 try {
			 msg = "update test set title=?, pay=?, gender=?, wdate=sysdate where code=? ";
			 PST = CN.prepareStatement(msg);
			 			 PST.setString(1, a);
			 			 PST.setInt(2, b);
			 			 PST.setString(3, gen);
			 			 PST.setInt(4, code);
			 PST.executeUpdate();
			 System.out.println("TestSQL.java 수정처리성공");
		 }catch(Exception e){System.out.println("dbEdit메소드 수정에러 " + e.toString());}
	 }//end
	 
	
	public int dbCount( ){ //testList.jsp문서에서 직접접근
 	  try{
			 msg="select count(*) as cnt from test ";
			 ST=CN.createStatement();
			 RS=ST.executeQuery(msg);
			 RS.next(); Gtotal = RS.getInt("cnt");
	  }catch(Exception e){System.out.println("에러 " + e.toString());}
 	 return Gtotal;
	}//end
	 
	
	
	
	public ArrayList<TestDTO>  dbList( ){ //여러건전부 데이터를 testList.jsp문서에서 직접접근
		ArrayList<TestDTO> aList = new ArrayList<TestDTO>(); //제네릭표현으로 add대상의 타입을지정 <>
 	  try{
 	   ST = CN.createStatement();
 	   msg = "select * from test  order by title asc" ;  
 	   RS = ST.executeQuery( msg );  
	 	   while(RS.next()==true){
	 	  	 TestDTO dto = new TestDTO();//각각개인별 DTO=VO종합선물세트 setXXX대입(값) =>ArrayList에 add
	 	  	  dto.setTitle(RS.getString("title")); //땡겨서사용할때 getXXX() 게터
	 	  	  dto.setPay(RS.getInt("pay"));
	 	  	  dto.setGender(RS.getString("gender"));
	 	  	  dto.setWdate(RS.getDate("wdate"));
	 	  	  dto.setCode(RS.getInt("code")); 
	 	  	  dto.setImg_file_name(RS.getString("img_file_name"));
	 	  	  //개개인별 정보=종합선물센트 dto에 setXXX(인자)===>ArrayList컬렉션에 add시키고 다음사람꺼 또 setXXX세터화
	 	  	  aList.add(dto);
	 	   }//while end
	  }catch(Exception e){System.out.println("에러 " + e.toString());}
 	  return aList;
	}//end	
	
	
	public  TestDTO  dbDetail(int data) { //한건상세쿼리문장을 testDetail.jsp문서연결
		TestDTO dto = new TestDTO(); //한건 code조회는 한건 개인별 DTO=VO종합선물세트 setXXX대입.....>>>>> getXXX()
		 try {
			 msg = "select * from test  where code = "  + data ;
			 System.out.println("TestSQL.java dbDetail함수 " +  msg);
			 ST = CN.createStatement();
		   RS = ST.executeQuery( msg );
		   if(RS.next()==true){ 
	 	  	  dto.setTitle(RS.getString("title"));
	 	  	  dto.setPay(RS.getInt("pay"));
	 	  	  dto.setGender(RS.getString("gender"));
	 	  	  dto.setWdate(RS.getDate("wdate"));
	 	  	  dto.setCode(RS.getInt("code")); 
	 	  	  dto.setImg_file_name(RS.getString("img_file_name"));
	 	   }//if end
		 }catch(Exception e){System.out.println("에러 " + e.toString());}
		 return dto;
	}//end
	
	
	////////////////////////////////////////////////////////////////////////////////////
	public void test( ) {
	 try {
		 
	 }catch(Exception e){System.out.println("에러 " + e.toString());}
	}//end
	
}//TestSQL class END








