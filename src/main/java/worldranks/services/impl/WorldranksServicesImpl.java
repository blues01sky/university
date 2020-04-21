package worldranks.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import worldranks.entity.Worldranks;
import worldranks.mapper.WorldranksMapper;
import worldranks.services.WorldranksServices;

@Service("worldranksServices")
public class WorldranksServicesImpl implements WorldranksServices {
	
	@Autowired
	private WorldranksMapper worldranksMapper;

	@Override
	public List<Worldranks> queryAll() {
		// TODO Auto-generated method stub
		return worldranksMapper.queryAll();
	}

	@Override
	public Worldranks findByIdYearDesc(Integer id) {
		// TODO Auto-generated method stub
		return worldranksMapper.findByIdYearDesc(id);
	}

	@Override
	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		worldranksMapper.deleteById(id);
	}

	@Override
	public List<Worldranks> findByBrand(String brand) {
		// TODO Auto-generated method stub
		return worldranksMapper.findByBrand(brand);
	}

	@Override
	public List<Worldranks> findByBrandlimit(String brand, Integer startnum, Integer countnum) {
		// TODO Auto-generated method stub
		return worldranksMapper.findByBrandlimit(brand, startnum, countnum);
	}

	@Override
	public List<Worldranks> findByBrandAndYear(String brand, Integer year) {
		// TODO Auto-generated method stub
		return worldranksMapper.findByBrandAndYear(brand, year);
	}

	@Override
	public List<Worldranks> findOnlyBrand() {
		// TODO Auto-generated method stub
		return worldranksMapper.findOnlyBrand();
	}

	@Override
	public List<Worldranks> findByuniversityname(String university_name) {
		// TODO Auto-generated method stub
		return worldranksMapper.findByuniversityname(university_name);
	}

	@Override
	public List<Worldranks> findOnlyYear(String brand) {
		// TODO Auto-generated method stub
		return worldranksMapper.findOnlyYear(brand);
	}

	@Override
	public List<Worldranks> findAUniversityname(String brand, Integer year, Integer ranking) {
		// TODO Auto-generated method stub
		return worldranksMapper.findAUniversityname(brand, year, ranking);
	}

	@Override
	public List<Worldranks> findByuniversitynameAndBrand(String university_name, String brand) {
		// TODO Auto-generated method stub
		return worldranksMapper.findByuniversitynameAndBrand(university_name, brand);
	}
	
	
	
}
