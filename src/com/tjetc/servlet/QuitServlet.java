package com.tjetc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/quit.hms")
public class QuitServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(false);
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		if (session==null) {
			response.sendRedirect("index.jsp");
			return;
		}
		session.removeAttribute("user");
		//这里用request也是可以的,只有response是重定向,以下两个是等价的,只不过一个是服务器跳转，不改变地址
		//一个是客户端重定向
//		response.sendRedirect("index.jsp");
		//requeset没有redirect
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
}
