package com.tjetc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tjetc.domain.UserDomain;
import com.tjetc.service.UserService;

@WebServlet("/login.hms")
public class LoginServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	UserService service = new UserService();

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 获得页面上的验证码
//		String vc = (String)request.getSession().getAttribute("vCode");
//		String Verify = request
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String uemail = request.getParameter("user_email");
		String pwd = request.getParameter("user_password");

		UserDomain user = service.login(uemail, pwd);
		if (user == null || "".equals(user)) {
			request.setAttribute("msg", "登录失败,请检查您的帐号和密码");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		} else {
			// 我这里把user_id 当作 等级划分，管理员只有一号
			if (user.getUserId() == 1) {
				request.getSession().setAttribute("user", user);
				response.sendRedirect("index.jsp");//这里是客户端跳转
			} else {
				request.getSession().setAttribute("user", user);
				// 这下面是服务器跳转,不改变网址
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		}

	}
	// 我没有在这里验证验证码，我的滑动验证码，应该不需要。需要的话在这里补

}