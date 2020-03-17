package area.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import area.entity.Area;

public interface AreaMapper {
	
	List<Area> queryAll();
	
	Area findByUniversityName(@Param("universityname") String universityname);
	
	Area findById(@Param("id") Integer id);
	
	Area findOnlyProvince();
	
	Area findOnlyLevel();
	
	String deleteById(@Param("id") Integer id);
	
	String deleteByUniversityName(@Param("universityname") String universityname);
	
	String addUniversity(Area area);
	
	String updateUniversityById(Area area);
}
