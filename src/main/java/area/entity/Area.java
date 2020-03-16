package area.entity;

public class Area {
	
	private int id;
	private String universityname;
	private String province;
	private String type;
	private int is211;
	private int is985;
	private String level;
	private String url;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUniversityname() {
		return universityname;
	}
	public void setUniversityname(String universityname) {
		this.universityname = universityname;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getIs211() {
		return is211;
	}
	public void setIs211(int is211) {
		this.is211 = is211;
	}
	public int getIs985() {
		return is985;
	}
	public void setIs985(int is985) {
		this.is985 = is985;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	@Override
	public String toString() {
		return "Area [id=" + id + ", universityname=" + universityname + ", province=" + province + ", type=" + type
				+ ", is211=" + is211 + ", is985=" + is985 + ", level=" + level + ", url=" + url + "]";
	}
	
}
