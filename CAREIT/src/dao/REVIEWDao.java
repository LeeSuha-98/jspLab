package dao;
//´Ù ¹Ù²Þ










































import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import jdbc.JdbcUtil;
import vo.Detailinfo;
import vo.Menuinfo;
import vo.Reviewinfo;
import vo.Storeinfo;

public class REVIEWDao {

	
public Reviewinfo selectByReviewinfo(Connection conn, int storeno) throws SQLException {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement("select * from reviewinfo where storeno = ?");
			pstmt.setInt(1, storeno);  
			rs = pstmt.executeQuery();
			
			Reviewinfo reviewinfo = null;
			if (rs.next()) {
				reviewinfo = new Reviewinfo(
						rs.getInt("storeno"), 
						rs.getInt("userno"),
						rs.getInt("reviewno"),
						rs.getDouble("avgscore"), 
						rs.getString("reviewcontents"),
						rs.getDate("reviewdate"));
						
			}
			return reviewinfo;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
	}


}
