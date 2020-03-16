package area.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import area.entity.Area;

public interface AreaMapper {
	
	List<Area> queryAll();
	
	Area findByUniversityName(@Param("universityname") String universityname);
	
}
