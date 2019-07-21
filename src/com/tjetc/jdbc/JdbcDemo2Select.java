package com.tjetc.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

//实现JDBC查询功能
public class JdbcDemo2Select {
  public static void main(String[] args) {
	Scanner input = new Scanner(System.in);
	String edesc = input.next();
	String url ="jdbc:mysql://localhost:3306/bookstore?useSSL=False";
	String user ="houyichao";
	String password ="hou1l";
	Connection connection =null;
	try {
	  Class.forName("com.mysql.jdbc.Driver");
	  connection =DriverManager.getConnection(url, user, password);
      String sql="select ename from emp where edesc=?";
	  PreparedStatement  ps = connection.prepareStatement(sql);
	  ps.setString(1, edesc);
	  ResultSet rs=  ps.executeQuery();
	  while(rs.next()) {
		  System.out.println(rs.getString(1));
	  }
	  System.out.println("查询成功");
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
