package util;

import java.util.List;

import score.entity.Score;
import score.mapper.ScoreMapper;

public class Test {
	
	private ScoreMapper ScoreMapper;
	
	@org.junit.Test
	public void name() {
		List<Score> sy = ScoreMapper.queryAll();
		/*findScoreByUniversitynameAndAreaAndDepartmentYearDesc("清华大学","河南","理科");*/
		System.out.println(sy);
	}
}
