package com.tjetc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tjetc.domain.FilmDomain;
import com.tjetc.domain.PageBean;
import com.tjetc.service.FilmsService;

@WebServlet("/findfilms.hms")
public class FindFilmsServlet  extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	FilmsService service = new FilmsService();
	// 调用服务
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		//获得前台传过来的当前页
		String pcex = request.getParameter("pc");
		Integer pc = 1; //默认是1

		//当我们发送分页查询请求的时候，如果没有pc，我们要给pc赋值默认为1
		
		if (pcex==null || "".equals(pcex)) {
			pc = 1;
		}
		else {
			pc = Integer.valueOf(pcex);

		}
		// 记录分页请求的地址
		String url = request.getRequestURL()+"?"+request.getQueryString();
		int index = url.indexOf("&pc=");

		if (index != - 1) {
			url = url.substring(0,index);//到&这个字符的下标结束
		}
		// 获取类型值
		String cid = request.getParameter("cid"); // 这个就是类型值
		//前台传字串再转化比在后台转化方便
		PageBean<FilmDomain> pb = service.findFilmPageService(pc, Integer.valueOf(cid));//因为cid是前台传过来，所以是字符串需要转
		pb.setUrl(url);
		pb.setPc(pc);
		request.setAttribute("pb", pb);

		request.getRequestDispatcher("movieList.jsp").forward(request, response);
//		super.service(request, response);
	}
	

}
