package vo;

public class Menuinfo {
	private int storeno;
	private String menu;
	private int price;
	private String menupic;
	
	
	public Menuinfo(int storeno,String menu, int price, String menupic) {
		super();
		this.storeno = storeno;
		this.menu = menu;
		this.price = price;
		this.menupic = menupic;
	}
		
	
	public int getStoreno() {
		return storeno;
	}


	public void setStoreno(int storeno) {
		this.storeno = storeno;
	}


	public String getMenu() {
		return menu;
	}


	public void setMenu(String menu) {
		this.menu = menu;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public String getMenupic() {
		return menupic;
	}


	public void setMenupic(String menupic) {
		this.menupic = menupic;
	}
}