package area.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import area.entity.Area;

public interface AreaMapper {
	
	List<Area> queryAll();
	
	Area findByUniversityName(@Param("universityname") String universityname);
	
	Area findById(@Param("id") Integer id);
	
	List<Area> findByType(@Param("type") String type);
	
	List<Area> findByLevel(@Param("level") String level);
	
	List<Area> findByProvince(@Param("province") String province);
	
	List<Area> findByProvinceLimit(@Param("startnum") Integer startnum,@Param("shownum") Integer shownum,@Param("province") String province);
	
	List<Area> findByTypeLimit(@Param("startnum") Integer startnum,@Param("shownum") Integer shownum,@Param("type") String type);
	
	List<Area> findByLevelLimit(@Param("startnum") Integer startnum,@Param("shownum") Integer shownum,@Param("level") String level);
	
	Integer findAllNumByLevel(@Param("level") String level);
	
	List<Area> findOnlyProvince();
	
	List<Area> findOnlyLevel();
	
	List<Area> findOnlyType();
	
	Integer findAllNumByType(@Param("type") String type);
	
	Integer findAllNum();
	
	Integer findAllNumByProvince(@Param("province") String province);
	
	String deleteById(@Param("id") Integer id);
	
	String deleteByUniversityName(@Param("universityname") String universityname);
	
	void addUniversity(Area area);
	
	String updateUniversityById(Area area);
}
