package com.tjetc.domain;

public class Emp2 {
	private int eid;
	private String ename;
	private int age;
	private String address;
	private String edesc;
	private String dname;
	private Object birth;
	private String password;

	// TODO Auto-generated method stub
	public Emp2(int eid, String ename, int age, String address, String edesc, String dname, Object birth,String password) {
		super();
		this.eid = eid;
		this.ename = ename;
		this.age = age;
		this.address = address;
		this.edesc = edesc;
		this.dname = dname;
		this.birth = birth;
		this.password = password;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public Emp2() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEdesc() {
		return edesc;
	}

	public void setEdesc(String edesc) {
		this.edesc = edesc;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public Object getBirth() {
		return birth;
	}

	public void setBirth(Object birth) {
		this.birth = birth;
	}


	@Override
	public String toString() {
		// TODO Auto-generated method stub
        return ("Emp2 [eid=" +eid  + " ename=" + ename + " age" + age + " address="
                + address+ " edesc=" + edesc + " dname="+ dname+ " birth="+ birth+"]");
    }

	

}
