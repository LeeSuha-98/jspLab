package favorite.model;

public class FavoriteContent {

	private Integer number;
	private String content;

	public FavoriteContent(Integer number, int i, String content) {
		this.number = number;
		this.content = content;
	}

	public Integer getNumber() {
		return number;
	}

	public String getContent() {
		return content;
	}

}
