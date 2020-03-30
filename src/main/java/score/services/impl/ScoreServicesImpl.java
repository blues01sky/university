package score.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import score.entity.Score;
import score.mapper.ScoreMapper;
import score.services.ScoreServices;
import util.DateUtil;

@Service("ScoreServices")
public class ScoreServicesImpl implements ScoreServices {

	@Autowired
	private ScoreMapper scoreMapper;
	
	DateUtil date = new DateUtil();
	
	@Override
	public List<Score> queryAll() {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了遍历所有的分数线的方法"+"------------------");
		return scoreMapper.queryAll();
	}

	@Override
	public List<Score> findScoreByUniversitynameAndAreaAndDepartmentYearDesc(String universityname,String area,String department) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了根据学校名字找学校的方法"+"------------------");
		return scoreMapper.findScoreByUniversitynameAndAreaAndDepartmentYearDesc(universityname, area, department);
	}

	@Override
	public List<Score> findScoreByAreaAndDepartmentYearDesc(String area, String department) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了根据地区和科别找学校的方法"+"------------------");
		return scoreMapper.findScoreByAreaAndDepartmentYearDesc(area,department);
	}

	@Override
	public List<Score> findScoreBiggerThanMinimumAsc(Integer minimum) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了根据分数线找学校的方法"+"------------------");
		return scoreMapper.findScoreBiggerThanMinimumAsc(minimum);
	}

	@Override
	public List<Score> findScoreByAreaAndDepartmentBiggerThanMinimumAsc(Integer minimum, String area, String department) {
		// TODO Auto-generated method stub.
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了根据分数线地区和科别找学校的方法"+"------------------");
		return scoreMapper.findScoreByAreaAndDepartmentBiggerThanMinimumAsc(minimum,area,department);
	}

	@Override
	public String deleteByScoreName(String universityname) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了根据id删除分数线的方法"+"------------------");
		return scoreMapper.deleteByScoreName(universityname);
	}

	@Override
	public String deleteByScoreId(Integer id) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了根据id删除分数线的方法"+"------------------");
		return scoreMapper.deleteByScoreId(id);
	}

	@Override
	public String addScore(Score score) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了增加分数线的方法"+"------------------");
		return scoreMapper.addScore( score);
	}

	@Override
	public String updateScoreById(Score score) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了根据id更新分数线的方法"+"------------------");
		return scoreMapper.updateScoreById(score);
	}

	@Override
	public String updateScoreByUniversityname(Score score) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了根据大学更新分数线的方法"+"------------------");
		return scoreMapper.updateScoreByUniversityname(score);
	}

	@Override
	public List<Score> findScoreByUniversitynameYearDesc(String universityname) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Score> findBigSelves(String minscore, String maxscore, Integer todayyear, Integer startnum,
			Integer pagecount,String department,String area) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了根据分估学校的方法"+"------------------");
		return scoreMapper.findBigSelves(minscore, maxscore, todayyear, startnum, pagecount, department, area);
	}

	@Override
	public Integer findBigSelvesCount(String minscore, String maxscore, Integer todayyear,String department,String area) {
		// TODO Auto-generated method stub
		return scoreMapper.findBigSelvesCount(minscore, maxscore, todayyear, department, area);
	}

}
