package area.services;

import java.util.List;

import area.entity.Area;

public interface AreaService {
	
	List<Area> queryAll();
	
	Area findByUniversityName(String universityname);
}
