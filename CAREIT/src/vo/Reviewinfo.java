package vo;

public class Reviewinfo {
	private int storeno;
	private int userno;
	private int reviewno;
	private double avgscore;
	private String reviewcontents; 
	private String reviewdate;
	
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
	public int getReviewno() {
		return reviewno;
	}
	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}
	public double isAvgscore() {
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
	public String getReviewdate() {
		return reviewdate;
	}
	public void setReviewdate(String reviewdate) {
		this.reviewdate = reviewdate;
	}
	public Reviewinfo(int storeno, int userno, int reviewno, double avgscore, String reviewcontents,
			String reviewdate) {
		super();
		this.storeno = storeno;
		this.userno = userno;
		this.reviewno = reviewno;
		this.avgscore = avgscore;
		this.reviewcontents = reviewcontents;
		this.reviewdate = reviewdate;
	}
	
	
	
	
}