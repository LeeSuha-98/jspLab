package service;

import java.sql.Connection;
import java.sql.SQLException;

import dao.FoodDao;
import jdbc.connection.ConnectionProvider;
import vo.Detailinfo;
import vo.Menuinfo;
import vo.Reviewinfo;
import vo.Storeinfo;

public class FoodService {

	private FoodDao foodDao = new FoodDao();

	public Storeinfo storeinfo(int storeno) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			Storeinfo storeinfo = foodDao.selectById(conn, storeno);
			if (storeinfo == null) {
				//throw new LoginFailException();
			}
			
			return storeinfo;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public Menuinfo menuinfo(int storeno) {
		// TODO Auto-generated method stub
		try (Connection conn = ConnectionProvider.getConnection()) {
			Menuinfo menuinfo = foodDao.selectByMenuinfo(conn, storeno);
			if (menuinfo == null) {
				//throw new LoginFailException();
			}
			
			return menuinfo;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public Detailinfo detailinfo(int storeno) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			Detailinfo detailinfo = foodDao.selectByDetailinfo(conn, storeno);
			if (detailinfo == null) {
				//throw new LoginFailException();
			}
			
			return detailinfo;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	public Reviewinfo reviewinfo(int storeno) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			Reviewinfo reviewinfo = foodDao.selectByReviewinfo(conn, storeno);
			if (reviewinfo == null) {
				//throw new LoginFailException();
			}
			
			return reviewinfo;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	}

