package guestbook.service;

import java.sql.Connection;
import java.sql.SQLException;

import guestbook.dao.MessageDao;
import guestbook.model.Message;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import java.util.Date;
import java.util.Date;
public class DeleteMessageService {

	private static DeleteMessageService instance = new DeleteMessageService();

	public static DeleteMessageService getInstance() {
		return instance;
	}

	private DeleteMessageService() {
	}

	public void deleteMessage(int reviewno,int storeno, int userno, int avgscore, String reviewcontents, Date reviewdate) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);

			MessageDao messageDao = MessageDao.getInstance();
			Message message = messageDao.select(conn, reviewno);
			if (message == null) {
				throw new MessageNotFoundException("硫붿떆吏� �뾾�쓬");
			}
			
			messageDao.delete(conn, reviewno);

			conn.commit();
		} catch (SQLException ex) {
			JdbcUtil.rollback(conn);
			throw new ServiceException("�궘�젣 �떎�뙣:" + ex.getMessage(), ex);
		} catch (InvalidPassowrdException | MessageNotFoundException ex) {
			JdbcUtil.rollback(conn);
			throw ex;
		} finally {
			JdbcUtil.close(conn);
		}
	}
}