package com.tjetc.dao;

import java.util.ArrayList;

import com.tjetc.domain.UserDomain;



// TODO Auto-generated method stub

public interface UserDao{
	
	/**
	 *	判定是否是新的用户注册信息，不准有重复 
	 * @param uname
	 * @param email 
	 * @return
	 */
	public  boolean VerifyUserRegister(String uname,String email);

	/**
	 * 验证登录信息是否正确
	 * @param uname
	 * @param pwd
	 * @return
	 */
	public UserDomain Login(String uname,String pwd);
	//	/*  增     */
	/**
	 * 插入新注册的用户信息
	 * @param userInfoVo
	 * @return
	 */
	public boolean insertUserInfo(UserDomain uDo);
	
	/**/ 
	/*  改     */
	/**
	 * 根据id更新用户信息
	 * @param uDo
	 * @return
	 */
	public int updateUserInfoById(UserDomain uDo);
	
	/**
	 * 根据用户名改密码
	 * @param uDo
	 * @return
	 */
	public int updateUserPwdByName(UserDomain uDo);
	
	/**
	 * 根据用户名和邮箱修改密码
	 * @param uDo
	 * @return
	 */
	public int updateUserPwdByNameAndEmail(UserDomain uDo);
	
	/**
	 * 根据用户名修改用户邮箱
	 * @param uDo
	 * @return
	 */
	public int updateUserEmailByName(UserDomain uDo);
	
	/*  查     */
	/**
	 * 根据用户名查询密码
	 * @param userName
	 * @return
	 */
	public String queryPasswordByUserName(String userName);
	
	/**
	 * 根据用户名查询用户信息
	 * @param userName
	 * @return
	 */
	public UserDomain queryUserInfoByName(String userName);
	
	/**
	 * 根据条件查询总的有效用户数量
	 * @param uDo
	 * @return
	 */
	public int 	queryUserTotalCount(UserDomain uDo);
	
	/**
	 * 根据页面大小和页码查询一页的用户
	 * @param uDo
	 * @param pageSize
	 * @param pageNo
	 * @return
	 */
	public ArrayList<UserDomain> queryUserPerPage(UserDomain uDo, int pageSize, int pageNo);
}
	


