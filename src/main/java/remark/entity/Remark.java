package remark.entity;

import java.sql.Date;

public class Remark {
	private Integer id;
	private String universityname;
	private String content;
	private Date updatetime;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUniversityname() {
		return universityname;
	}
	public void setUniversityname(String universityname) {
		this.universityname = universityname;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	@Override
	public String toString() {
		return "Remark [id=" + id + ", universityname=" + universityname + ", content=" + content + ", updatetime="
				+ updatetime + "]";
	}
	
}
