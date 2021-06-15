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

public class MENUINFODao {

	

	
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
	public List<Menuinfo> selectList(Connection conn, int firstRow, int endRow) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from(select row_number() over(order by menuinfo.storeno) num, menuinfo.*"
					+ "from storeinfo, menuinfo where storeinfo.storeno = menuinfo.storeno"
					+ "order by menuinfo.storeno desc)"
					+ "where num between ? and ?");
			pstmt.setInt(1, firstRow - 1);
			pstmt.setInt(2, endRow - firstRow + 1);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				List<Menuinfo> menuinfoList = new ArrayList<Menuinfo>();
				do {
					menuinfoList.add(makeMenuinfoFromResultSet(rs));
				} while (rs.next());
				return menuinfoList;
			} else {
				return Collections.emptyList();
			}
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	private Menuinfo makeMenuinfoFromResultSet(ResultSet rs) {
		// TODO Auto-generated method stub
		return null;
	}
}


