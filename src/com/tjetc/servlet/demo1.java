package com.tjetc.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tjetc.domain.Emp;


@WebServlet("/demo.do")
public class demo1 extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		// 文本框
		// 获取多个值怎么版 复选框
//		String[] hobby = req.getParameterValues("hobby");// 这个不要给文本框用,不然null也算是值
//		String []uname =request.getParameterValues("uname");
//        String pwd  =request.getParameter("pwd");	
//        String []hobby=request.getParameterValues("hobby");
//        System.out.println("uname"+uname.length);
//        System.out.println("hobby"+hobby.length);
		// 调用dao返回的 domain list<domain> boolean
		List<Emp> users  =new ArrayList();
	    Emp user = new Emp(3, "ename", 3, "address", "edesc", "dname", "birth");
        users.add(user);
        users.add(user);
        users.add(user);
        users.add(user);
        request.setAttribute("users",users);
        //如何传list《user》
        //服务器跳转
        request.getRequestDispatcher("show.jsp").forward(request, response);
	}
}
