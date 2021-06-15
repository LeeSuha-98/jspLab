package dao;
//´Ù ¹Ù²Þ














































import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import jdbc.JdbcUtil;
import vo.Detailinfo;
import vo.Menuinfo;
import vo.Reviewinfo;
import vo.Storeinfo;

public class STOREINFODao {

	public Storeinfo selectById(Connection conn, int storeno) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement("select * from storeinfo "
					+ "where storeno = ?");
			pstmt.setInt(1, storeno);
			rs = pstmt.executeQuery();
			
			Storeinfo storeinfo = null;
			if (rs.next()) {
				storeinfo = new Storeinfo(
						rs.getInt("storeno"), 
						rs.getString("storename"), 
						rs.getString("storepic"), 
						rs.getString("address"), 
						rs.getString("hours"),
						rs.getString("closeddays"), 
						rs.getInt("callnumber"),
						rs.getInt("manageno"));
			}
			return storeinfo;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
	}




}
