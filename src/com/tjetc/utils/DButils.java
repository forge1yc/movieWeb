package com.tjetc.utils;

import java.sql.Connection;
import java.sql.DriverManager;


public class DButils {
	private static Connection conn = null;
	private static final String url="jdbc:mysql://localhost:3306/movieDb?useSSL=False";
	private static final String user= "adminhou";
	private static final String password = "123123";
	private static final String className = "com.mysql.jdbc.Driver";
	//得到连接对象
	public static Connection getConnection() {
		try {
			Class.forName(className);
			conn= DriverManager.getConnection(url, user, password);

			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return conn;
	}

	public static void close() {
		if (conn!=null) {
			try {
				conn.close();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();

			}
		}
	}
	
}
