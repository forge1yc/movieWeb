package com.tjetc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tjetc.domain.UserDomain;
import com.tjetc.service.UserService;

@WebServlet("/register.hms")
public class RegisterServlet extends HttpServlet{
	UserService service = new UserService();
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// 这里我没有验证验证码,因为我是滑动拼图的验证码
		String email = request.getParameter("user_email");
		String uname = request.getParameter("user_name");
		String pwd   = request.getParameter("user_password");
		String cpwd	 = request.getParameter("user_cpassword"); 
		if (pwd.equals(cpwd)) {
			UserDomain user = new UserDomain();
			user.setUserName(uname);
			user.setUserEmail(email);
			user.setUserPassword(pwd);
			boolean flag = service.register(user);
			if (flag) {
				request.setAttribute("msg", "注册成功,将马上转到登录界面");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			else {
				request.setAttribute("msg", "注册失败,请输入新的邮箱和帐号");
				request.getRequestDispatcher("register.jsp").forward(request, response);
			}
		}
		else {
			request.setAttribute("msg", "两次密码输入不一致");
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}
	}


}
