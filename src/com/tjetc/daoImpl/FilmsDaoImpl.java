package com.tjetc.daoImpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tjetc.dao.FilmsDao;
import com.tjetc.domain.FilmDomain;
import com.tjetc.domain.PageBean;
import com.tjetc.utils.DButils;

public class FilmsDaoImpl implements FilmsDao {

	@Override
	public FilmDomain findMid(int mid) {
		// TODO Auto-generated method stub
		String sql = "select * from film_info where mid =  ?";
		FilmDomain film = null;
		try {
			PreparedStatement pr = DButils.getConnection().prepareStatement(sql);
			pr.setInt(1, mid);
			ResultSet re = pr.executeQuery();
			while(re.next()) {//此处while和if一样，因为唯一
				film = new FilmDomain(); 
				film.setActhor(re.getString("acthor"));
				film.setCid(re.getInt("cid"));
				film.setDirector(re.getString("director"));
				film.setHot_flag(re.getInt("hot_flag"));
				film.setMdesc(re.getString("mdesc"));
				film.setMid(re.getInt("mid"));
				film.setMimage(re.getString("mimage"));
				film.setMname(re.getString("mname"));
				film.setMtime(re.getString("mtime"));
				
			}

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

		}
		return film;
	}

	@Override
	public PageBean<FilmDomain> findFilmPage(int pc, int cid) {//比如直接找第五页
		// TODO Auto-generated method stub
		PageBean<FilmDomain> pb = new PageBean<FilmDomain>();
		// 设定ps ，每页多少个
		Integer ps = 12;
		pb.setPs(ps);
		// 查找tr
		String sql = "select count(*) from film_info where cid =?";
		try {
			PreparedStatement pr = DButils.getConnection().prepareStatement(sql);
			pr.setInt(1, cid);
			ResultSet re = pr.executeQuery(); 
			if(re.next()) {
				pb.setTr(re.getInt(1));

			}
			else {
				pb.setTr(0);
			}
			sql = "select * from film_info where cid = ? limit ?,? ";//3 6 从第三条开始往后读六条
			pr = DButils.getConnection().prepareStatement(sql);
			pr. setInt(1,cid); //cid是classid
			pr.setInt(2, ps*(pc -1 )); //ps一页显示多少个，pc当前页
			pr.setInt(3, ps); 
			re = pr.executeQuery();
			List<FilmDomain> films = new ArrayList<FilmDomain>();
			FilmDomain film = null;
			while (re.next()) {
				film = new FilmDomain();
				film.setActhor(re.getString("acthor"));
				film.setCid(re.getInt("cid"));
				film.setDirector(re.getString("director"));
				film.setHot_flag(re.getInt("hot_flag"));
				film.setMdesc(re.getString("mdesc"));
				film.setMid(re.getInt("mid"));
				film.setMimage(re.getString("mimage"));
				film.setMname(re.getString("mname"));
				film.setMtime(re.getString("mtime"));
				films.add(film);
			}
			pb.setListbeans(films);
			
			
			

			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				DButils.getConnection().close();
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return pb;
	}

}
