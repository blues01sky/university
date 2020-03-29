package major.entity;

public class Major {
	private Integer id;
	private String professional;//专业
	private String degree;//学位
	private String majortype;//专业小类
	private String universityname;//开设学校
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getProfessional() {
		return professional;
	}
	public void setProfessional(String professional) {
		this.professional = professional;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getMajortype() {
		return majortype;
	}
	public void setMajortype(String majortype) {
		this.majortype = majortype;
	}
	public String getUniversityname() {
		return universityname;
	}
	public void setUniversityname(String universityname) {
		this.universityname = universityname;
	}
	@Override
	public String toString() {
		return "Major [id=" + id + ", professional=" + professional + ", degree=" + degree + ", majortype=" + majortype
				+ ", universityname=" + universityname + "]";
	}
	
	
	
	
}
