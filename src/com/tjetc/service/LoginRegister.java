//package com.tjetc.service;
//
//import java.util.Scanner;
//
//import com.tjetc.daoImpl.UserDaoImpl;
//import com.tjetc.domain.Emp2;
//
//public class LoginRegister {
//
//	public static void main(String[] args) {
//		// TODO Auto-generated method stub
//
//		while (true) {
//			UserDaoImpl dao = new UserDaoImpl();
//			System.out.println("请输入用户名:");
//			Scanner sc = new Scanner(System.in);
//			String ename = sc.nextLine();
//			if (dao.findEmp2ByName(ename)) {
//				System.out.println("此用户名有效");
//				System.out.println("请输入密码(有效密码三次):");
//				for (int i = 0; i < 3; i++) {
//					Scanner sc2 = new Scanner(System.in);
//					String queryPassword = sc.nextLine();
//					if (dao.verifyPassword(ename, queryPassword)) {
//						sc.close();
//						System.out.println("登录成功");
//						break;
//					}
//				}
//
//			} else {
//				System.out.println("此用户名不存在");
//				System.out.println("请注册");
//				System.out.println("请输入用户名:");
//				Scanner newName = new Scanner(System.in);
//				String newEname = newName.nextLine();
//				newName.close();
//				System.out.println("请输入密码:");
//				Scanner password = new Scanner(System.in);
//				String newPassword = password.nextLine();
//				password.close();
//				Emp2 emp2 = new Emp2(0, newEname, 19, "foo", "foo", "foo", "foo", newPassword);
//				if (dao.insertEmp2(emp2)) {
//					System.out.println("创建用户:" + newEname + "成功");
//					continue;
//				}
//			}
//		}
//	}
//}
