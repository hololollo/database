package org.kh.dto;

public class Usertable {
	private String owner;
	private String table_name;
	private String tablespace_name;
	private int pct_used;
	private int pct_free;
	public Usertable() {}
	public Usertable(String owner, String table_name, String tablespace_name, int pct_used, int pct_free) {
		super();
		this.owner = owner;
		this.table_name = table_name;
		this.tablespace_name = tablespace_name;
		this.pct_used = pct_used;
		this.pct_free = pct_free;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public String getTable_name() {
		return table_name;
	}
	public void setTable_name(String table_name) {
		this.table_name = table_name;
	}
	public String getTablespace_name() {
		return tablespace_name;
	}
	public void setTablespace_name(String tablespace_name) {
		this.tablespace_name = tablespace_name;
	}
	public int getPct_used() {
		return pct_used;
	}
	public void setPct_used(int pct_used) {
		this.pct_used = pct_used;
	}
	public int getPct_free() {
		return pct_free;
	}
	public void setPct_free(int pct_free) {
		this.pct_free = pct_free;
	}
	@Override
	public String toString() {
		return "Usertable [owner=" + owner + ", table_name=" + table_name + ", tablespace_name=" + tablespace_name
				+ ", pct_used=" + pct_used + ", pct_free=" + pct_free + "]";
	}
	
}
