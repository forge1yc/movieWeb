package com.tjetc.service;

import com.tjetc.daoImpl.UserDaoImpl;
import com.tjetc.domain.UserDomain;

public class UserService {
	UserDaoImpl daoImpl = new UserDaoImpl();

	public UserDomain login(String uemail, String pwd) {
		UserDomain user = null;
		try {
			user = daoImpl.Login(uemail, pwd);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return user;
	}

	public boolean register(UserDomain user) {
		boolean flag = false;
		UserDaoImpl uDl = new UserDaoImpl();
		// 判断是否是有效的新用户
		boolean returnValue = uDl.VerifyUserRegister(user.getUserName(), user.getUserEmail());
		if (returnValue) {
			// 如果为真，调用插入新用户的bean函数
			boolean flagInserUser = false;// 判定是否插入成功
			flagInserUser = uDl.insertUserInfo(user);
			if (flagInserUser) {
				flag = true;//插入成功
				return flag;//这个返回和最下面的return 重复，但是保险
			}
		}
		else {
			return flag;
		}
		return flag;
	}

	public UserService() {
	}
}
