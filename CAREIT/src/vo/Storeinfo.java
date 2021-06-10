package vo;

public class Storeinfo {
	private int storeno;
	private String storename;
	private String storepic;
	private String address;
	private String time;
	private String closeddays;
	private int callnumber;
	
	public Storeinfo(int storeno, String storename, String storepic, String address, String time, String closeddays,
			int callnumber) {
		super();
		this.storeno = storeno;
		this.storename = storename;
		this.storepic = storepic;
		this.address = address;
		this.time = time;
		this.closeddays = closeddays;
		this.callnumber = callnumber;
	}

	public Storeinfo(int int1, String string, int int2, String string2) {
		// TODO Auto-generated constructor stub
	}

	public int getStoreno() {
		return storeno;
	}

	public void setStoreno(int storeno) {
		this.storeno = storeno;
	}

	public String getStorename() {
		return storename;
	}

	public void setStorename(String storename) {
		this.storename = storename;
	}

	public String getStorepic() {
		return storepic;
	}

	public void setStorepic(String storepic) {
		this.storepic = storepic;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getCloseddays() {
		return closeddays;
	}

	public void setCloseddays(String closeddays) {
		this.closeddays = closeddays;
	}

	public int getCallnumber() {
		return callnumber;
	}

	public void setCallnumber(int callnumber) {
		this.callnumber = callnumber;
	}
	
	
	
	

}
