package com.tjetc.domain;

import java.util.List;

public class PageBean<T> {
	private int pc;//当前页
	private int tr;//一共多少条记录
	private int ps;//一页显示多少个
	private int tp;//一共多少页
	
	private String url;//分页查询请求地址
	private List<T> listbeans;//每页显示的内容
	public int getPc() {
		return pc;
	}
	public void setPc(int pc) {
		this.pc = pc;
	}
	public int getTr() {
		return tr;
	}
	public void setTr(int tr) {
		this.tr = tr;
	}
	public int getPs() {
		return ps;
	}
	public void setPs(int ps) {
		this.ps = ps;
	}
	public int getTp() {
		int tp = tr / ps;// 3 2 1 
		return tr%ps==0?tp:tp+1; 
	}
	public void setTp(int tp) {
		this.tp = tp;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public List<T> getListbeans() {
		return listbeans;
	}
	public void setListbeans(List<T> listbeans) {
		this.listbeans = listbeans;
	}
	
	
}
