package guestbook.model;

import java.util.Date;

public class Message {

	private int reviewno;
	private int storeno;
	private int userno;
	private double avgscore;
	private String reviewcontents;
	private Date reviewdate;
	
	public Message() {}
	
	public Message(int reviewno, int storeno, int userno, double avgscore, String reviewcontents, Date reviewdate) {
		super();
		this.reviewno = reviewno;
		this.storeno = storeno;
		this.userno = userno;
		this.avgscore = avgscore;
		this.reviewcontents = reviewcontents;
		this.reviewdate = reviewdate;
	}
	public int getReviewno() {
		return reviewno;
	}
	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}
	public int getStoreno() {
		return storeno;
	}
	public void setStoreno(int storeno) {
		this.storeno = storeno;
	}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public double getAvgscore() {
		return avgscore;
	}
	public void setAvgscore(double avgscore) {
		this.avgscore = avgscore;
	}
	public String getReviewcontents() {
		return reviewcontents;
	}
	public void setReviewcontents(String reviewcontents) {
		this.reviewcontents = reviewcontents;
	}
	public Date getReviewdate() {
		return reviewdate;
	}
	public void setReviewdate(Date reviewdate) {
		this.reviewdate = reviewdate;
	}
	
	
	 
}