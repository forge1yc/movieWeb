package com.tjetc.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

//实现JDBC插入功能
public class JdbcDemo2Insert {
  public static void main(String[] args) {
	Scanner input = new Scanner(System.in);
	String ename = input.next();
	int age  =  input.nextInt();
	String dname = input.next();
	String address = input.next();
	String birth  = input.next();
	String edesc = input.next();
	String url ="jdbc:mysql://localhost:3306/bookstore?useSSL=False";
	String user ="houyichao";
	String password ="houl";
	Connection connection =null;
	try {
	  Class.forName("com.mysql.jdbc.Driver");
	  connection =DriverManager.getConnection(url, user, password);
	  //实现插入功能
      String sql="insert into emp(ename,age,dname,address,birth,edesc)values(?,?,?,?,?,?)";
	  PreparedStatement  ps = connection.prepareStatement(sql);
	  ps.setString(1, ename);
	  ps.setInt(2, age);
	  ps.setString(3, dname);
	  ps.setString(4, address);
	  ps.setObject(5, birth);
	  ps.setString(6, edesc);
	  int  a=  ps.executeUpdate();
	  System.out.println(a);
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
