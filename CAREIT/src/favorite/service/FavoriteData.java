package favorite.service;

import article.model.Article;
import article.model.ArticleContent;

public class FavoriteData {

	private Article article;
	private ArticleContent content;

	public FavoriteData(Article article, ArticleContent content) {
		this.article = article;
		this.content = content;
	}

	public Article getArticle() {
		return article;
	}

	public String getContent() {
		return content.getContent();
	}

}
