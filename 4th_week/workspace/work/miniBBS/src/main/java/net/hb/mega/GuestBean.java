package net.hb.mega;


public class GuestBean {
	private  int empNo;
    private  String name="둘리";
  		  
  public String getName() {	return name;}
  public void setName(String name) {	this.name =name;}

  public int getEmpNo() {	return empNo;}
  public void setEmpNo(int empNo) {	this.empNo = empNo;}

   public void print() {
	  System.out.println("사번=" + getEmpNo());
	  System.out.println("이름=" + getName());
   }
   
   public String toString() {
	   return "변경된이름: " + getName();
   }
}//class END
