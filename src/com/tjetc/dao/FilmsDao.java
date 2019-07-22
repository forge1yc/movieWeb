package com.tjetc.dao;

import com.tjetc.domain.FilmDomain;
import com.tjetc.domain.PageBean;

public interface FilmsDao {
	/**
	 * 找到电影页的顺序
	 * @param pc
	 * @param cid
	 * @return
	 */
	public PageBean<FilmDomain> findFilmPage(int pc,int cid);
	
	/**
	 * 找到电影的mid
	 * @param mid
	 * @return
	 */
	public FilmDomain findMid( int mid);

	/**
	 *	通过名字找到电影 
	 * @param name
	 * @return
	 */
	
	public FilmDomain findName(String name);
}
