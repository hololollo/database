package org.ganreung.dto;

public class Traffic {
	private String ttype;
	private int no;
	private String route;
	private String coment;
	public Traffic() {}
	public Traffic(String ttype, int no, String route, String coment) {
		super();
		this.ttype = ttype;
		this.no = no;
		this.route = route;
		this.coment = coment;
	}
	public String getTtype() {
		return ttype;
	}
	public void setTtype(String ttype) {
		this.ttype = ttype;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getRoute() {
		return route;
	}
	public void setRoute(String route) {
		this.route = route;
	}
	public String getComent() {
		return coment;
	}
	public void setComent(String coment) {
		this.coment = coment;
	}
	@Override
	public String toString() {
		return "Traffic [ttype=" + ttype + ", no=" + no + ", route=" + route + ", coment=" + coment + "]";
	}
	
	
}
