package guestbook.action;
 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.Action;

import guestbook.model.GuestbookBean;
import guestbook.model.GuestbookDAO;

 
public abstract class GuestbookWriteAction implements Action
{
 
    public ActionForward execute(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        
        request.setCharacterEncoding("utf-8"); // ���ڵ�
        ActionForward forward = new ActionForward();
        
        // �ĸ����͸� �����´�.
        int storeno = request.getParameter("storeno");
        String  = request.getParameter("guestbook_id");
        String guestbook_password = request.getParameter("guestbook_password");
        String guestbook_content = request.getParameter("guestbook_content");
        
        GuestbookDAO dao = GuestbookDAO.getInstance();
        
        // �Ķ���� ���� GuestbookBean�� �����Ѵ�.
        GuestbookBean guestbook = new GuestbookBean();
        guestbook.setGuestbook_no(dao.getSeq());
        guestbook.setGuestbook_id(guestbook_id);
        guestbook.setGuestbook_password(guestbook_password);
        guestbook.setGuestbook_content(guestbook_content);
        
        boolean result = dao.guestbookInsert(guestbook);
        
        if(result){
            forward.setRedirect(true);
            forward.setNextPath("GuestbookListAction.ge");
        }
        
        return forward;
    }
}

