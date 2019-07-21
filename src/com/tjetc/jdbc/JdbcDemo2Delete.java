package com.tjetc.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

//实现JDBC删除功能
public class JdbcDemo2Delete {
  public static void main(String[] args) {
	Scanner input = new Scanner(System.in);
	String ename = input.next();
	String url ="jdbc:mysql://localhost:3306/bookstore?useSSL=False";
	String user ="houyichao";
	String password ="hou19941230l";
	Connection connection =null;
	try {
	  Class.forName("com.mysql.jdbc.Driver");
	  connection =DriverManager.getConnection(url, user, password);
	  String sql="delete from emp where ename=?";
	  PreparedStatement  ps = connection.prepareStatement(sql);
	  ps.setString(1, ename);
	  int  a=  ps.executeUpdate();
	  if(a>0) {
		  System.out.println("删除成功");
	  }
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}finally {
		try {
			if(connection!=null){
			connection.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
}
