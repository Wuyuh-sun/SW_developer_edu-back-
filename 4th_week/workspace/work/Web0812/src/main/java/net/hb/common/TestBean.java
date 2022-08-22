package net.hb.common;

public class TestBean { //Bean=DTO=VO 필드/getter/setter==한강다리역할=비행기역할=ktx역할
  private String title;
  private int pay;
  private java.util.Date  wdate;
  private int code;
  private int rn;
  
  public int getRn() {return rn;}
  public void setRn(int rn) {this.rn = rn;}
  
  public String getTitle() {return title;}
  public void setTitle(String title) {this.title = title;	}
  public int getPay() {return pay;}
  public void setPay(int pay) {this.pay = pay;	}
  public java.util.Date getWdate() {return wdate;	}
  public void setWdate(java.util.Date wdate) {this.wdate = wdate;	}
  public int getCode() {return code;	}
  public void setCode(int code) {	this.code = code;}
  
}//class END
