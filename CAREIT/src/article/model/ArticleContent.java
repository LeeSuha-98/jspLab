package article.model;

public class ArticleContent {

	private Integer number;
	private String content;

	public ArticleContent(Integer number, int i, String content) {
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
