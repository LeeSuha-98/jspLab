package vo;

public class Detailinfo {
	private int storeno;
	private int totalseat;
	private int socketseat;
	private String dessertsales;
	private String terrace;
	private String rooftop;
	private String wifi;
	private String companiondog;
	private String parkingspace;
	private String nokidszone;
	private String smokingarea;
	
	
	public Detailinfo(int storeno, int totalseat, int socketseat, String dessertsales, String terrace, String rooftop,
			String wifi, String companiondog, String parkingspace, String nokidszone, String smokingarea) {
		super();
		this.storeno = storeno;
		this.totalseat = totalseat;
		this.socketseat = socketseat;
		this.dessertsales = dessertsales;
		this.terrace = terrace;
		this.rooftop = rooftop;
		this.wifi = wifi;
		this.companiondog = companiondog;
		this.parkingspace = parkingspace;
		this.nokidszone = nokidszone;
		this.smokingarea = smokingarea;
	}
	
	

	public int getStoreno() {
		return storeno;
	}
	public void setStoreno(int storeno) {
		this.storeno = storeno;
	}
	public int getTotalseat() {
		return totalseat;
	}
	public void setTotalseat(int totalseat) {
		this.totalseat = totalseat;
	}
	public int getSocketseat() {
		return socketseat;
	}
	public void setSocketseat(int socketseat) {
		this.socketseat = socketseat;
	}
	public String getDessertsales() {
		return dessertsales;
	}
	public void setDessertsales(String dessertsales) {
		this.dessertsales = dessertsales;
	}
	public String getTerrace() {
		return terrace;
	}
	public void setTerrace(String terrace) {
		this.terrace = terrace;
	}
	public String getRooftop() {
		return rooftop;
	}
	public void setRooftop(String rooftop) {
		this.rooftop = rooftop;
	}
	public String getWifi() {
		return wifi;
	}
	public void setWifi(String wifi) {
		this.wifi = wifi;
	}
	public String getCompaniondog() {
		return companiondog;
	}
	public void setCompaniondog(String companiondog) {
		this.companiondog = companiondog;
	}
	public String getParkingspace() {
		return parkingspace;
	}
	public void setParkingspace(String parkingspace) {
		this.parkingspace = parkingspace;
	}
	public String getNokidszone() {
		return nokidszone;
	}
	public void setNokidszone(String nokidszone) {
		this.nokidszone = nokidszone;
	}
	public String getSmokingarea() {
		return smokingarea;
	}
	public void setSmokingarea(String smokingarea) {
		this.smokingarea = smokingarea;
	}


	
}