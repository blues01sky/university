package area.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import area.entity.Area;
import area.mapper.AreaMapper;
import area.services.AreaService;

@Service("areaService")
public class AreaServiceImpl implements AreaService {

	@Autowired
	private AreaMapper areaMapper;
	
	@Override
	public List<Area> queryAll() {
		// TODO Auto-generated method stub
		return areaMapper.queryAll();
	}

	@Override
	public Area findByUniversityName(String universityname) {
		// TODO Auto-generated method stub
		return areaMapper.findByUniversityName(universityname);
	}

	@Override
	public Area findById(Integer id) {
		// TODO Auto-generated method stub
		return areaMapper.findById(id);
	}

	@Override
	public Area findOnlyProvince() {
		// TODO Auto-generated method stub
		return areaMapper.findOnlyProvince();
	}

	@Override
	public Area findOnlyLevel() {
		// TODO Auto-generated method stub
		return areaMapper.findOnlyLevel();
	}

	@Override
	public String deleteById(Integer id) {
		// TODO Auto-generated method stub
		return areaMapper.deleteById(id);
	}

	@Override
	public String deleteByUniversityName(String universityname) {
		// TODO Auto-generated method stub
		return areaMapper.deleteByUniversityName(universityname);
	}

	@Override
	public String addUniversity(Area area) {
		// TODO Auto-generated method stub
		return areaMapper.addUniversity(area);
	}

	@Override
	public String updateUniversityById(Area area) {
		// TODO Auto-generated method stub
		return areaMapper.updateUniversityById(area);
	}
	
}
