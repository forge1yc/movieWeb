package com.tjetc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tjetc.domain.FilmDomain;
import com.tjetc.service.FilmsService;

@WebServlet("/FindMid")
public class FindMidServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	FilmsService service = new FilmsService();

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.service(request, response);
		String mid = request.getParameter("mid");
		//但是不接不行啊
		//没有接mid 的值，mid是null 在null进行integer转型的
		//话会报null指针异常
		FilmDomain film = service.findMid(Integer.valueOf(mid));
		request.setAttribute("film", film);
		request.getRequestDispatcher("movies_info.jsp").forward(request, response);
		
	}
	
	
	
}
