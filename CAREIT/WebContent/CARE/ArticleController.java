import java.util.ArrayList;

public class ArticleController extends Controller {
	
	ArrayList<Article> articles = new ArrayList<>(); //���� �Խù� �����
	ArrayList<Like> replies = new ArrayList<>(); //���ƿ� �����
	
	int number = 3; //�ĺ���(�Խù� ��ȣ)�� ����� ���� ������
	
	public void makeTestData() {
		Article a1 = new Article(1, "�ȳ��ϼ���", "�ȳ��ϼ���","2021.03.07",0,"�͸�");
		Article a2 = new Article(2, "�ݰ����ϴ�", "�ݰ����ϴ�","2021.03.07",0,"�͸�");
		Article a3 = new Article(3, "�ȳ�", "�ȳ�","2021.03.07",0,"�͸�");
		
		articles.add(a1);
		articles.add(a2);
		articles.add(a3);
		
	}
	
	//
	public void doCommand(String command) {
		if(command.equals("article add")) {
			// �α��� üũ
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
	//Ư�� ���� �Խù��� �޾� ������ִ� �޼���
	public void printArticle(Article al) {
		System.out.println("====: "+al.num+"�� �Խù� ===");
		System.out.println("�ۼ���: "+al.nickname);
		System.out.println("����: "+al.al.body);
		System.out.println("===========================");
	for(int i=0; i<replies.size(); i++) {
		Reply r1 = replies.get(i);
		if(r1.aNum == a1.num) {
			System.out.println("�ۼ���: " +r1.nickname);
			System.out.println("����: " +r1.body);
			System.out.println("�ۼ���: " +r1.regDate);
		}
	}
	System.out.println("======================");
		
	}
	
	public void readProcess(Article al) {