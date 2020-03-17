package charge.entity;

public class Charge {
	private Integer id;
	private String universityname;
	private String type;
	private String province;
	private String cost;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	@Override
	public String toString() {
		return "Charge [id=" + id + ", universityname=" + universityname + ", type=" + type + ", province=" + province
				+ ", cost=" + cost + "]";
	}
	
}	
