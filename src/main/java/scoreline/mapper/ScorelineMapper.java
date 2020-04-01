package scoreline.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import scoreline.entity.Scoreline;

public interface ScorelineMapper {
	List<Scoreline> queryAll();
	
	List<Scoreline> findByProvinceAndYearDepartment(@Param("province") String province,@Param("deparement") String deparement,@Param("year") String year);
	
	Scoreline findScorelineById(@Param("id") Integer id);
	
	void deleteByScorelineId(@Param("id") Integer id);
	
	void addScoreline(Scoreline scoreline);
	
	void updateScorelineById(Scoreline scoreline);
}
