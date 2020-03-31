package scoreline.entity;

public class Scoreline {
	private Integer id;
	private String province;
	private String deparement;
	private String year;
	private String cengci;
	private String fenshu;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getDeparement() {
		return deparement;
	}
	public void setDeparement(String deparement) {
		this.deparement = deparement;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getCengci() {
		return cengci;
	}
	public void setCengci(String cengci) {
		this.cengci = cengci;
	}
	public String getFenshu() {
		return fenshu;
	}
	public void setFenshu(String fenshu) {
		this.fenshu = fenshu;
	}
	@Override
	public String toString() {
		return "Scoreline [id=" + id + ", province=" + province + ", deparement=" + deparement + ", year=" + year
				+ ", cengci=" + cengci + ", fenshu=" + fenshu + "]";
	}
}
