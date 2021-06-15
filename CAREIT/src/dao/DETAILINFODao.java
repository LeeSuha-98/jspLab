package dao;

//´Ù¹Ù²Þ










































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

public class DETAILINFODao {

	



	public Detailinfo selectByDetailinfo(Connection conn, int storeno) throws SQLException {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement("select * from detailinfo where storeno = ?");
			pstmt.setInt(1, storeno);  
			rs = pstmt.executeQuery();
			
			Detailinfo detailinfo = null;
			if (rs.next()) {
				detailinfo = new Detailinfo(
						rs.getInt("storeNo"), 
						rs.getInt("totalSeat"),
						rs.getInt("socketSeat"),
						rs.getString("dessertSales"), 
						rs.getString("terrace"), 
						rs.getString("roofTop"), 
						rs.getString("wifi"),
						rs.getString("companionDog"), 
						rs.getString("parkingSpace"),
						rs.getString("noKidsZone"),
						rs.getString("smokingArea"));
			}
			return detailinfo;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
	}

}
