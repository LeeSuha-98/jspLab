package favorite.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import article.service.ArticlePage;
import article.service.ListArticleService;
import mvc.command.CommandHandler;

public class ListFavoriteHandler implements CommandHandler {

	private ListFavoriteService listService = new ListFavoriteService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) 
			throws Exception {
		String pageNoVal = req.getParameter("pageNo");
		int pageNo = 1;
		if (pageNoVal != null) {
			pageNo = Integer.parseInt(pageNoVal);
		}
		ArticlePage articlePage = listService.getArticlePage(pageNo);
		req.setAttribute("FavoritePage", FavoritePage);
		return "/CARE/listFavorite.jsp";
	}

}
