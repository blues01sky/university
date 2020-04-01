package scoreline.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import scoreline.entity.Scoreline;
import scoreline.mapper.ScorelineMapper;
import scoreline.services.ScorelineServices;

@Service("scorelineServices")
public class ScorelineServicesImpl implements ScorelineServices {

	@Autowired
	private ScorelineMapper scorelineMapper;
	
	@Override
	public List<Scoreline> queryAll() {
		// TODO Auto-generated method stub
		return scorelineMapper.queryAll();
	}

	@Override
	public List<Scoreline> findByProvinceAndYearDepartment(String province, String deparement, String year) {
		// TODO Auto-generated method stub
		return scorelineMapper.findByProvinceAndYearDepartment(province,deparement, year);
	}

	@Override
	public Scoreline findScorelineById(Integer id) {
		// TODO Auto-generated method stub
		return scorelineMapper.findScorelineById(id);
	}

	@Override
	public void deleteByScorelineId(Integer id) {
		// TODO Auto-generated method stub
		scorelineMapper.deleteByScorelineId(id);
	}

	@Override
	public void addScoreline(Scoreline scoreline) {
		// TODO Auto-generated method stub
		scorelineMapper.addScoreline(scoreline);
	}

	@Override
	public void updateScorelineById(Scoreline scoreline) {
		// TODO Auto-generated method stub
		scorelineMapper.updateScorelineById(scoreline);
	}
	
}
