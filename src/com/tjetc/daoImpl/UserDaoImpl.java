package com.tjetc.daoImpl;

import java.util.ArrayList;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.tjetc.dao.UserDao;
import com.tjetc.domain.UserDomain;
import com.tjetc.utils.DButils;

public class UserDaoImpl implements UserDao {

	/**
	 * 这个函数可以优化，判定是用户名重复，还是邮箱已经被使用 不过，邮箱被使用的可能性比较小，所以目前简化版不带这个判定
	 */
	@Override
	public boolean VerifyUserRegister(String uname, String email) {
		boolean flag = false;
		String sqlUname = "select * from user_info where user_name = ? ";
		String sqlEmail = "select * from user_info where user_email= ?";
		try {
			PreparedStatement psUname = DButils.getConnection().prepareStatement(sqlUname);
			PreparedStatement psEmail = DButils.getConnection().prepareStatement(sqlEmail);

			psUname.setString(1, uname);
			psEmail.setString(1, email);
			ResultSet reUname = psUname.executeQuery();
			ResultSet reEmail = psEmail.executeQuery();

			if (reUname.next()||reEmail.next()) {
				return flag;
			}
			else {
				flag =true;
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				DButils.getConnection().close();
			} catch (SQLException e) {// 这里必须写，不然关不上
				// TODO: handle exception
				e.printStackTrace();
			}
		}

		// TODO Auto-generated method stub
		return flag;
	}

	@Override
	public UserDomain Login(String uemail, String pwd) {
		// TODO Auto-generated method stub
		String sql = "select * from user_info where user_email = ? and user_password =?";
		UserDomain user = null;
		try {
			PreparedStatement ps = DButils.getConnection().prepareStatement(sql);

			ps.setString(1, uemail);
			ps.setString(2, pwd);

			ResultSet re = ps.executeQuery();
			if (re.next()) {
				user = new UserDomain();
				user.setUserId(re.getInt("user_id"));
				user.setUserAddress(re.getString("user_address"));
				user.setUserAge(re.getInt("user_age"));
				user.setUserEmail(re.getString("user_email"));
				user.setUserHeadUrl((re.getString("user_head_url")));
				user.setUserName(re.getString("user_name"));
				user.setUserPassword(re.getString("user_password"));
				user.setUserSex(re.getString("user_sex"));
				user.setUserPhone(re.getString("user_phone"));
				user.setUserNickName(re.getString("user_nick_name"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				DButils.getConnection().close(); // 这块必须这样写，不然不会抛出下面的错误
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return user;
	}

	@Override
	public boolean insertUserInfo(UserDomain uDo) {
		// TODO Auto-generated method stub
		boolean flag = false;

		String sql = "INSERT INTO user_info "
				+ "(user_name, user_password, user_email, user_phone, user_age, user_sex , user_address,user_head_url,user_nick_name) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?,?,?)";

		try {
			PreparedStatement ps = DButils.getConnection().prepareStatement(sql);
			ps.setString(1, uDo.getUserName());
			ps.setString(2, uDo.getUserPassword());
			ps.setString(3, uDo.getUserEmail());
			ps.setString(4, uDo.getUserPhone());
			ps.setInt(5, uDo.getUserAge());
			ps.setString(6, uDo.getUserSex());
			ps.setString(7, uDo.getUserAddress());
			ps.setString(8, uDo.getUserHeadUrl());
			ps.setString(9, uDo.getUserNickName());

			int re = ps.executeUpdate();
			if (re > -1) {
				flag = true;
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				DButils.getConnection().close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return flag;

	}

	@Override
	public int updateUserInfoById(UserDomain uDo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateUserPwdByName(UserDomain uDo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateUserPwdByNameAndEmail(UserDomain uDo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateUserEmailByName(UserDomain uDo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String queryPasswordByUserName(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserDomain queryUserInfoByName(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int queryUserTotalCount(UserDomain uDo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<UserDomain> queryUserPerPage(UserDomain uDo, int pageSize, int pageNo) {
		// TODO Auto-generated method stub
		return null;
	}
}
