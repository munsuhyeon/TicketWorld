package com.worldticket.project.dto;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ConcertDto {
	
	private int cnum;//공연번호
	private String ctitle;//공연제목
	private String cplace;//공연장소
	private Date cstartdate;//공연시작날짜
	private Date cenddate;//공연종료날짜
	private int ctime;//공연시간
	private String pic;//공연이미지주소
	private int cprice;//공연 가격
	
	public ConcertDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ConcertDto(int cnum, String ctitle, String cplace, Date cstartdate, Date cenddate, int ctime, String pic, int cprice) {
		super();
		this.cnum = cnum;
		this.ctitle = ctitle;
		this.cplace = cplace;
		this.cstartdate = cstartdate;
		this.cenddate = cenddate;
		this.ctime = ctime;
		this.pic = pic;
		this.cprice = cprice;
	}
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public String getCtitle() {
		return ctitle;
	}
	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}
	public String getCplace() {
		return cplace;
	}
	public void setCplace(String cplace) {
		this.cplace = cplace;
	}
	public Date getCstartdate() {
		return cstartdate;
	}
	public void setCstartdate(Date cstartdate) {
		this.cstartdate = cstartdate;
	}
	public Date getCenddate() {
		return cenddate;
	}
	public void setCenddate(Date cenddate) {
		this.cenddate = cenddate;
	}
	public int getCtime() {
		return ctime;
	}
	public void setCtime(int ctime) {
		this.ctime = ctime;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public int getCprice() {
		return cprice;
	}
	public void setCprice(int cprice) {
		this.cprice = cprice;
	}
	
}
