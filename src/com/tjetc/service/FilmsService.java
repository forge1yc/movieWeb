package com.tjetc.service;

import java.sql.SQLException;

import com.tjetc.daoImpl.FilmsDaoImpl;
import com.tjetc.domain.FilmDomain;
import com.tjetc.domain.PageBean;
import com.tjetc.utils.DButils;

public class FilmsService {
	// 服务专门调用impl
	FilmsDaoImpl daoImpl= new  FilmsDaoImpl();

	/**
	 *	用来找到点击第五页的时候应该显示的页面 
	 * @param pc
	 * @param cid
	 * @return
	 */
	public PageBean<FilmDomain>  findFilmPageService(int pc,int cid){
		PageBean<FilmDomain> pb = new PageBean<FilmDomain>();
		try {
			pb = daoImpl.findFilmPage(pc, cid); 
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return pb;
		
	}

	public FilmDomain findName(String name) {
		FilmDomain film = null;
		try {
		film = daoImpl.findName(name);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
			try {
				DButils.getConnection().close();
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		//这里竟然空了	
		}
		return film;
	}
	/**
	 *	通过id找电影 
	 * @param mid
	 * @return
	 */
	public FilmDomain findMid(int mid) {
		FilmDomain film = null;
		try {
		film = daoImpl.findMid(mid);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
			try {
				DButils.getConnection().close();
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		//这里竟然空了	
		}
		return film;
	}
}
	