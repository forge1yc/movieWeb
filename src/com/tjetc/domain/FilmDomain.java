package com.tjetc.domain;

public class FilmDomain {
	private int mid;
	private String mname;
	private String acthor;
	private String director;
	private String mimage;
	private String mdesc;
	private Object mtime;
	private int hot_flag;
	private int cid;
	
	
	public FilmDomain(int mid, String mname, String acthor, String director, String mimage, String mdesc, Object mtime,
			int hot_flag, int cid) {
		super();
		this.mid = mid;
		this.mname = mname;
		this.acthor = acthor;
		this.director = director;
		this.mimage = mimage;
		this.mdesc = mdesc;
		this.mtime = mtime;
		this.hot_flag = hot_flag;
		this.cid = cid;
	}


	public FilmDomain() {
		super();
		// TODO Auto-generated constructor stub
	}


	@Override
	public String toString() {
		return "Film [mid=" + mid + ", mname=" + mname + ", acthor=" + acthor + ", director=" + director + ", mimage="
				+ mimage + ", mdesc=" + mdesc + ", mtime=" + mtime + ", hot_flag=" + hot_flag + ", cid=" + cid + "]";
	}


	public int getMid() {
		return mid;
	}


	public void setMid(int mid) {
		this.mid = mid;
	}


	public String getMname() {
		return mname;
	}


	public void setMname(String mname) {
		this.mname = mname;
	}


	public String getActhor() {
		return acthor;
	}


	public void setActhor(String acthor) {
		this.acthor = acthor;
	}


	public String getDirector() {
		return director;
	}


	public void setDirector(String director) {
		this.director = director;
	}


	public String getMimage() {
		return mimage;
	}


	public void setMimage(String mimage) {
		this.mimage = mimage;
	}


	public String getMdesc() {
		return mdesc;
	}


	public void setMdesc(String mdesc) {
		this.mdesc = mdesc;
	}


	public Object getMtime() {
		return mtime;
	}


	public void setMtime(Object mtime) {
		this.mtime = mtime;
	}


	public int getHot_flag() {
		return hot_flag;
	}


	public void setHot_flag(int hot_flag) {
		this.hot_flag = hot_flag;
	}


	public int getCid() {
		return cid;
	}


	public void setCid(int cid) {
		this.cid = cid;
	}
	
}
