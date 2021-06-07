package favorite.service;

import java.sql.Connection;
import java.sql.SQLException;

import article.dao.ArticleContentDao;
import article.dao.ArticleDao;
import article.model.Article;
import article.model.ArticleContent;
import jdbc.connection.ConnectionProvider;

public class ReadFavoriteService {

	private ArticleDao articleDao = new ArticleDao();
	private ArticleContentDao contentDao = new ArticleContentDao();
	
	public FavoriteData getArticle(int articleNum, boolean increaseReadCount) {
		try (Connection conn = ConnectionProvider.getConnection()){
			Article article = articleDao.selectById(conn, articleNum);
			if (article == null) {
				throw new FavoriteNotFoundException();
			}
			ArticleContent content = contentDao.selectById(conn, articleNum);
			if (content == null) {
				throw new FavoriteContentNotFoundException();
			}
			if (increaseReadCount) {
				articleDao.increaseReadCount(conn, articleNum);
			}
			return new FavoriteData(article, content);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
