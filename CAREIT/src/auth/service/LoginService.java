package auth.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.connection.ConnectionProvider;
import member.dao.MemberDao;
import member.model.Member;

public class LoginService {

	private MemberDao memberDao = new MemberDao();

	public User login(String id, String password) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			Member member = memberDao.selectById(conn, id);
			if (member == null) {
				throw new LoginFailException();
			}
			
			System.out.println("member.password="+member.getPassword());
			System.out.println("password="+password);
			
			if (!member.matchPassword(password)) {
				System.out.println("비밀번호가 다릅니다.");
				throw new LoginFailException();
			}
			
			return new User(member.getUserid(), member.getUsername());
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
