//package com.tjetc.test;
//
//import java.util.List;
//
//import com.tjetc.dao.UserDao;
//import com.tjetc.daoImpl.UserDaoImpl;
//import com.tjetc.domain.Emp;
//
//public class TestDaoImpl {
//
//	// 测试完成多条记录查询功能
//	public static void main(String[] args) {
//		// TODO Auto-generated method stub
//		UserDao dao = new UserDaoImpl();
//		System.out.println("**********************查找多条记录**************************");
//		List<Emp> emps = dao.findMoreById(1, 2, 3, 4);
//		for (Emp emp : emps) {
//			System.out.println(emp.toString());
//		}
//
//		System.out.println("**********************查找所有记录**************************");
//		// 查找所有记录
//		List<Emp> emps2 = dao.findall();
//		for (Emp emp : emps2) {
//			System.out.println(emp.toString());
//		}
//
//		System.out.println("**********************根据查找记录**************************");
//		Emp emps3 = dao.findByEid(5);
//		System.out.println(emps3.toString());
//
//		System.out.println("**********************根据ID删除记录**************************");
//		dao.deletebyEid(4);
//		// 验证4号删除
//		List<Emp> emps5 = dao.findall();
//		for (Emp emp : emps5) {
//			System.out.println(emp.toString());
//		}
//
//
//		System.out.println("**********************插入记录**************************");
//		Emp emps6= new Emp(1,"ironman",45,"america","fire","xxxx","1977-4-8");
//		System.out.println(dao.insertEmp(emps6));
//	}
//
//}