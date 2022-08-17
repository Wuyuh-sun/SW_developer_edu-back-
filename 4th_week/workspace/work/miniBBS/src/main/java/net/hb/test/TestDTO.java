package net.hb.test;

public class TestDTO {
	  public String title;
	  public int pay;
	  public String gender;
	  public java.util.Date  wdate;
	  public int code;
	  public String img_file_name;
	  public int rn ; //วเน๘ศฃ
  
		public String getTitle() {	return title;	}
		public void setTitle(String title) {this.title = title;		}
		public int getPay() {	return this.pay;		}
		public void setPay(int pay) {this.pay = pay;}
		public String getGender() {return gender;}
		public void setGender(String gender) {this.gender = gender;	}
		public java.util.Date getWdate() {return wdate;	}
		public void setWdate(java.util.Date wdate) {this.wdate = wdate;	}
		public int getCode() {return code;		}
		public void setCode(int code) {	this.code = code;	}
		public String getImg_file_name() {	return img_file_name;	}
		public void setImg_file_name(String img_file_name) {	this.img_file_name = img_file_name;	}
		public int getRn() {return rn;	}
		public void setRn(int rn) {	this.rn = rn;	}
		
}//class END
