package com.tjetc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.fabric.Response;

@WebServlet("/demo")
public class Demo extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		//重启的时候执行
		System.out.println("##################销毁####################");
	}

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//不管是get还是post请求，我们都会使用service 方法处理
		//处理到底是用doget 还是 dopost 请求，它内部封装好了
		//获取out对象
		request.setCharacterEncoding("utf-8");
		//接受值
		response.setCharacterEncoding("utf-8");
		//响应值
		PrintWriter out = response.getWriter();
		out.println("<h1>aaaa</h1>");
		String uname= request.getParameter("uname");
		System.out.println("###########################service success#######################");
	}
}
