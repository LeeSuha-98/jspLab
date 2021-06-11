package guestbook.model;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
 
import jdbc.JdbcUtil;
import vo.Detailinfo;
import vo.Menuinfo;
import vo.Reviewinfo;
import vo.Storeinfo;

public class GuestbookDAO 
{
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;
    
    private static GuestbookDAO instance;
    
    private GuestbookDAO(){}
    public static GuestbookDAO getInstance(){
        if(instance==null)
            instance=new GuestbookDAO();
        return instance;
    }
    
    // 시퀀스를 가져온다.
    public int getSeq() 
    {
        int result = 1;
        try {
        	pstmt = conn.prepareStatement("select * from reviewinfo where storeno = ?");
			pstmt.setInt(1, storeno);
			rs = pstmt.executeQuery();
			
			Storeinfo storeinfo = null;
			if (rs.next()) {
				storeinfo = new Storeinfo(
						rs.getInt("storeno"), 
						rs.getString("storename"), 
						rs.getString("storepic"), 
						rs.getString("address"), 
						rs.getString("time"),
						rs.getString("closeddays"), 
						rs.getInt("callnumber"));
			}
			return reviewinfo;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
	}
    
    
    // 병명록 등록
    public boolean guestbookInsert(GuestbookBean guestbook)
    {
        boolean result = false;
        
        try {
        	pstmt = conn.prepareStatement("insert into reviewinfo values( , , , , ,)");
			pstmt.setInt(1, storeno);
			rs = pstmt.executeQuery();
 
            // 자동 커밋을 false로 한다.
            conn.setAutoCommit(false);
            
         
         
    
            pstmt = conn.prepareStatement(sql.toString());
            pstmt.setInt(1, no);
            pstmt.setString(2, guestbook.getGuestbook_id());
            pstmt.setString(3, guestbook.getGuestbook_password());
            pstmt.setString(4, guestbook.getGuestbook_content());
            pstmt.setInt(5, group);
            pstmt.setInt(6, parent);
 
            int flag = pstmt.executeUpdate();
            if(flag > 0){
                result = true;
                conn.commit(); // 완료시 커밋
            }
            
        } catch (Exception e) {
            try {
                conn.rollback(); // 오류시 롤백
            } catch (SQLException sqle) {
                sqle.printStackTrace();
            } 
            e.printStackTrace();
            throw new RuntimeException(e.getMessage());
        }
        
        close();
        return result;    
    } // end boardInsert();    
    
    
    // 방명록 목록 보기
    public ArrayList<GuestbookBean> getGuestbookList(int pageNum)
    {
        ArrayList<GuestbookBean> list = new ArrayList<GuestbookBean>();
        
        try {
            conn = DBConnection.getConnection();
            
            /*
             * SELECT * FROM
             *            (SELECT  ROWNUM AS rnum,
             *                   data.*
             *             FROM
             *                   (SELECT LEVEL,
             *                              guestbook_no,
             *                             guestbook_id,
             *                            guestbook_password,
             *                             guestbook_content,
             *                             guestbook_group,
             *                             guestbook_parent,
             *                             guestbook_date,
             *                    FROM GUESTBOOK
             *                   START WITH guestbook_parent = 0
             *                   CONNECT BY PRIOR guestbook_no = guestbook_parent
             *                   ORDER SIBLINGS BY guestbook_group desc) 
             *             data)
             *     WHERE rnum>=? and rnum<=? ;
             */
            
            StringBuffer sql = new StringBuffer();
            sql.append("SELECT * FROM");
            sql.append(" (SELECT  ROWNUM AS rnum, data.* FROM ");
            sql.append("    (SELECT LEVEL, guestbook_no, guestbook_id,");
            sql.append("            guestbook_password, guestbook_content,");
            sql.append("            guestbook_group, guestbook_parent, guestbook_date");
            sql.append("    FROM GUESTBOOK");
            sql.append("    START WITH guestbook_parent = 0");
            sql.append("    CONNECT BY PRIOR guestbook_no = guestbook_parent");
            sql.append("    ORDER SIBLINGS BY guestbook_group desc)");              
            sql.append(" data) ");
            sql.append("WHERE rnum>=? and rnum<=?");
            
            // 방명록 목록은 한 화면에 총 5개가 보이도록 한다.
            pstmt = conn.prepareStatement(sql.toString());
            pstmt.setInt(1, pageNum);
            pstmt.setInt(2, pageNum+4);
            
            rs = pstmt.executeQuery();
            while(rs.next())
            {
                GuestbookBean guestbook = new GuestbookBean();
                guestbook.setGuestbook_no(rs.getInt("guestbook_no"));
                guestbook.setGuestbook_id(rs.getString("guestbook_id"));
                guestbook.setGuestbook_password(rs.getString("guestbook_password"));
                guestbook.setGuestbook_content(rs.getString("guestbook_content"));
                guestbook.setGuestbook_group(rs.getInt("guestbook_group"));
                guestbook.setGuestbook_parent(rs.getInt("guestbook_parent"));
                guestbook.setGuestbook_date(rs.getDate("guestbook_date"));
                list.add(guestbook);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e.getMessage());
        }
        
        close();
        return list;
    }
    
    // 방명록의 개수를 가져온다.
    public int getGuestbookCount()
    {
        int result = 0;
        
        try {
            conn = DBConnection.getConnection();
            
            StringBuffer sql = new StringBuffer();
            sql.append("SELECT COUNT(*) FROM GUESTBOOK");
            
            pstmt = conn.prepareStatement(sql.toString());
            rs = pstmt.executeQuery();
            if(rs.next())    result = rs.getInt(1);
            
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e.getMessage());
        }
        
        close();
        return result;    
    }
    
    // DB 자원해제
    private void close()
    {
        try {
            if ( pstmt != null ){ pstmt.close(); pstmt=null; }
            if ( conn != null ){ conn.close(); conn=null;    }
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    } // end close()    
    
    
}

