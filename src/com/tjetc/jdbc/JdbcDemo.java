package com.tjetc.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.print.DocFlavor.STRING;

public class JdbcDemo {
	public static void main(String[] args) {
		// 要把mysql驱动连接jar包复制粘贴到lib下
		// 我们写对了，但是为什么报错呢？而且提示你要加入try catch
		// 创建连接需要三个参数。
		// 我们去网吧，玩一款游戏 找到这款游戏 输入 账号 密码
		// 地址 账号 密码
		String url = "jdbc:mysql://localhost:3306/bookstore?useSSL=False";
		String user = "houyichao";
		String password = "hou";
		try {
			// 加载驱动
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("加载驱动成功");
			// 创建连接
			Connection conn = DriverManager.getConnection(url, user, password);
			System.out.println("创建连接成功");
			// 创建能够执行sql的对象
			Statement st = conn.createStatement();
			// executeupdate 可以执行create DELETE insert update
			// 实现查询功能
			String sql = "SELECT * FROM  emp";
			ResultSet re = st.executeQuery(sql);
			while (re.next()) {
				System.out.println(re.getString(1));
				System.out.println("实现查询功能");
			}
			// 实现增加功能
			String sql_insert = "insert into emp(ename,age,dname,address,birth,edesc)values('坤坤2号',3,'篮球部','天上有','2019-7-16','爱好：唱跳，rap，打篮球')";
			int tmp = st.executeUpdate(sql_insert);
			if (tmp > 0) {
				System.out.println("增加成功");
			}
			// 实现更改功能
			String sql_update = "update  emp set edesc ='武术',edesc='大碗宽面' where age =3";
			int tmp3 = st.executeUpdate(sql_update);
			if (tmp3 > 0) {
				System.out.println("更改成功");
			}

			// 实现删除功能
			String sql_insert_new = "insert into emp(ename,age,dname,address,birth,edesc)values('坤坤',3,'篮球部','天上有','2019-7-16','爱好：唱跳，rap，打篮球')";
			st.executeUpdate(sql_insert_new);

			String sql_delete = "DELETE FROM emp where ename= '坤坤'";
			int tmp2 = st.executeUpdate(sql_delete);
			if (tmp2 > 0) {
				System.out.println("删除成功");
			}
			// 检验最后数据库
			String sql_End = "SELECT * FROM  emp";
			ResultSet re_End = st.executeQuery(sql_End);
			while (re_End.next()) {
				System.out.println(re_End.getString(1));

			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
