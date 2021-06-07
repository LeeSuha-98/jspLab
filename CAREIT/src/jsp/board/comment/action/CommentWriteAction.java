package jsp.board.comment.action;
 
import java.io.PrintWriter;
 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import jsp.board.comment.model.CommentBean;
import jsp.board.comment.model.CommentDAO;
import jsp.common.action.Action;
import jsp.common.action.ActionForward;
 
public class CommentWriteAction implements Action
{
    @Override
    public ActionForward execute(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        
        CommentDAO dao = CommentDAO.getInstance();
        CommentBean comment = new CommentBean();
        
        // 파리미터 값을 가져온다.
        String reviewinfo = request.getParameter("reviewinfo");
        int userno = Integer.parseInt(request.getParameter("userno"));
        String reviewcontents = request.getParameter("reviewcontents");
        
        comment.setreviewinfo(dao.getSeq());    // 댓글 번호는 시퀀스값으로
        comment.setuserno(userno);
        comment.setreviewcontents(reviewcontents);
        
        boolean result = dao.insertComment(comment);
 
        if(result){
            response.setContentType("text/html;charset=euc-kr");
            PrintWriter out = response.getWriter();
            out.println("1");
            out.close();
        }
            
        return null;
    }
}
