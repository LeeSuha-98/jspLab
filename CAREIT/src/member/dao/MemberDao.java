package member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.Date;

import jdbc.JdbcUtil;
import member.model.Member;

public class MemberDao {

	public Member selectById(Connection conn, String id) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement("select * from userinfo where userid = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			Member member = null;
			if (rs.next()) {
				member = new Member(
						rs.getInt("userno"), 
						rs.getString("userid"), 
						rs.getString("password"), 
						rs.getString("username"), 
						rs.getString("nickname"),
						rs.getDate("birth"), 
						rs.getString("email"),
						rs.getString("gender"),
						rs.getString("administer"));
			}
			return member;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	private Date toDate(Timestamp date) {
		return date == null ? null : new Date(date.getTime());
	}

	public void insert(Connection conn, Member mem) throws SQLException {
		java.sql.Date birthday = new java.sql.Date( mem.getBirth().getTime() );
		try (PreparedStatement pstmt = 
				conn.prepareStatement("insert into member values(?,?,?,?)")) {
			pstmt.setInt(1, mem.getUserno());
			pstmt.setString(2, mem.getUserid());
			pstmt.setString(3, mem.getPassword());
			pstmt.setString(4, mem.getUsername());
			pstmt.setString(5, mem.getNickname());
			pstmt.setDate(6, birthday);
			pstmt.setString(7, mem.getEmail());
			pstmt.setString(8, mem.getGender());
			pstmt.setString(9, mem.getAdminister());
			pstmt.executeUpdate();
		}
	}

	public void update(Connection conn, Member member) throws SQLException {
		try (PreparedStatement pstmt = conn.prepareStatement(
				"update member set name = ?, password = ? where memberid = ?")) {
			pstmt.setString(1, member.getUsername());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getUserid());
			pstmt.executeUpdate();
		}
	}
}
