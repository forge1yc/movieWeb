package com.tjetc.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

//实现JDBC更新功能
public class JdbcDemo2Update {
  public static void main(String[] args) {
	Scanner input = new Scanner(System.in);
	String ename = input.next();
	int age  =  input.nextInt();
	String url ="jdbc:mysql://localhost:3306/bookstore?useSSL=False";
	String user ="houyichao";
	String password ="hou10l";
	Connection connection =null;
	try {
	  Class.forName("com.mysql.jdbc.Driver");
	  connection =DriverManager.getConnection(url, user, password);
      String sql="update emp set ename=? where age = ?";
	  PreparedStatement  ps = connection.prepareStatement(sql);
	  ps.setString(1, ename);
	  ps.setInt(2, age);
	  int  a=  ps.executeUpdate();
	  if (a>0) {
		  System.out.println("更改成功");
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
