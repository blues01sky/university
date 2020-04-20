package ranks.entity;

public class Ranks {
	private int id;
	private String brand;
	private int year;
	private int rank;
	private String name;
	private String category;
	private String type_of_school;
	private String location;
	private int rank_inlocation;
	private double score;
	private int star;
	private String level;
	private double scientific_research_score;
	private double telent_score;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getType_of_school() {
		return type_of_school;
	}
	public void setType_of_school(String type_of_school) {
		this.type_of_school = type_of_school;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getRank_inlocation() {
		return rank_inlocation;
	}
	public void setRank_inlocation(int rank_inlocation) {
		this.rank_inlocation = rank_inlocation;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public double getScientific_research_score() {
		return scientific_research_score;
	}
	public void setScientific_research_score(double scientific_research_score) {
		this.scientific_research_score = scientific_research_score;
	}
	public double getTelent_score() {
		return telent_score;
	}
	public void setTelent_score(double telent_score) {
		this.telent_score = telent_score;
	}
	@Override
	public String toString() {
		return "Ranks [id=" + id + ", brand=" + brand + ", year=" + year + ", rank=" + rank + ", name=" + name
				+ ", category=" + category + ", type_of_school=" + type_of_school + ", location=" + location
				+ ", rank_inlocation=" + rank_inlocation + ", score=" + score + ", star=" + star + ", level=" + level
				+ ", scientific_research_score=" + scientific_research_score + ", telent_score=" + telent_score + "]";
	}
	
}
