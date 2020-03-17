package major.entity;

public class Major {
	private Integer id;
	private String professional;
	private String degree;
	private String majortype;
	private String universityname;
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
	public Major(Integer id, String professional, String degree, String majortype, String universityname) {
		super();
		this.id = id;
		this.professional = professional;
		this.degree = degree;
		this.majortype = majortype;
		this.universityname = universityname;
	}
	
}
