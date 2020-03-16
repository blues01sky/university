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
	
}
