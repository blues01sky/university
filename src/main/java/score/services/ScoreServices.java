package score.services;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import score.entity.Score;

public interface ScoreServices {
	
	List<Score> queryAll();
	
	List<Score> findScoreByUniversitynameAndAreaAndDepartmentYearDesc(@Param("universityname") String universityname,@Param("area") String area,@Param("department") String department);
	
	List<Score> findScoreByUniversitynameYearDesc(@Param("universityname") String universityname);
	
	List<Score> findScoreByAreaAndDepartmentYearDesc(@Param("area") String area,@Param("department") String department);
	
	List<Score> findScoreBiggerThanMinimumAsc(@Param("minimum") Integer minimum);
	
	List<Score> findScoreByAreaAndDepartmentBiggerThanMinimumAsc(@Param("minimum") Integer minimum,@Param("area") String area,@Param("department") String department);
	
	String deleteByScoreName(@Param("universityname") String universityname );
	
	String deleteByScoreId(@Param("id") Integer id);
	
	String addScore(@Param("score") Score score);
	
	String updateScoreById(@Param("score") Score score);
	
	String updateScoreByUniversityname(@Param("score") Score score);
}
