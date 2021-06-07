import java.util.ArrayList;

public class ArticleController extends Controller {
	
	ArrayList<Article> articles = new ArrayList<>(); //리뷰 게시물 저장소
	ArrayList<Like> replies = new ArrayList<>(); //좋아요 저장소
	
	int number = 3; //식별자(게시물 번호)를 만들기 위한 데이터
	
	public void makeTestData() {
		Article a1 = new Article(1, "안녕하세요", "안녕하세요","2021.03.07",0,"익명");
		Article a2 = new Article(2, "반갑습니다", "반갑습니다","2021.03.07",0,"익명");
		Article a3 = new Article(3, "안녕", "안녕","2021.03.07",0,"익명");
		
		articles.add(a1);
		articles.add(a2);
		articles.add(a3);
		
	}
	
	//
	public void doCommand(String command) {
		if(command.equals("article add")) {
			// 로그인 체크
			if(isLogin()) {
				addArticle();
			}
		}
		
		if (command.equals("article list")) {
			printArticles(articles);
		}
		if (command.equals("article update")) {
			updateArticles(articles);
		}
		if (command.equals("article delete")) {
			deleteArticles(articles);
		}
		if (command.equals("article read")) {
			if (isLogin()) {
				readArticle();
			}
		}
	
}
	//특정 리뷰 게시물을 받아 출력해주는 메서드
	public void printArticle(Article al) {
		System.out.println("====: "+al.num+"번 게시물 ===");
		System.out.println("작성자: "+al.nickname);
		System.out.println("내용: "+al.al.body);
		System.out.println("===========================");
	for(int i=0; i<replies.size(); i++) {
		Reply r1 = replies.get(i);
		if(r1.aNum == a1.num) {
			System.out.println("작성자: " +r1.nickname);
			System.out.println("내용: " +r1.body);
			System.out.println("작성일: " +r1.regDate);
		}
	}
	System.out.println("======================");
		
	}
	
	public void readProcess(Article al) {