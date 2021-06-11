package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jdbc.JdbcUtil;
import vo.Detailinfo;
import vo.Menuinfo;
import vo.Reviewinfo;
import vo.Storeinfo;

public class FoodDao {

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
						rs.getString("time"),
						rs.getString("closeddays"), 
						rs.getInt("callnumber"));
			}
			return storeinfo;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
	}

	
	public Menuinfo selectByMenuinfo(Connection conn, int storeno) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement("select * from menuinfo where storeno = ?");
			pstmt.setInt(1, storeno);  
			rs = pstmt.executeQuery();
			
			Menuinfo menuinfo = null;
			if (rs.next()) {
				menuinfo = new Menuinfo(
						rs.getInt("storeno"), 
						rs.getString("menu"), 
						rs.getInt("price"), 
						rs.getString("menupic"));
			}
			return menuinfo;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
	}
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
						rs.getInt("storeno"), 
						rs.getInt("totalseat"),
						rs.getInt("socketseat"),
						rs.getString("dessertsales"), 
						rs.getString("terrace"), 
						rs.getString("rooftop"), 
						rs.getString("wifi"),
						rs.getString("companiondog"), 
						rs.getString("parkingspace"),
						rs.getString("nokidszone"),
						rs.getString("smokingarea"));
			}
			return detailinfo;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
	}
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
						rs.getString("reviewdate"));
						
			}
			return reviewinfo;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
	}


}
