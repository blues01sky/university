package ranks.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ranks.entity.Ranks;
import ranks.mapper.RanksMapper;
import ranks.services.RanksServices;

@Service("ranksServices")
public class RanksServicesImpl implements RanksServices {
	
	@Autowired
	private RanksMapper ranksMapper;

	@Override
	public List<Ranks> queryAll() {
		// TODO Auto-generated method stub
		return ranksMapper.queryAll();
	}

	@Override
	public Ranks findByIdYearDesc(Integer id) {
		// TODO Auto-generated method stub
		return ranksMapper.findByIdYearDesc(id);
	}

	@Override
	public List<Ranks> findByNameYearDesc(String name) {
		// TODO Auto-generated method stub
		return ranksMapper.findByNameYearDesc(name);
	}

	@Override
	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		ranksMapper.deleteById(id);
	}

	@Override
	public List<Ranks> findByBrand(String brand) {
		// TODO Auto-generated method stub
		return ranksMapper.findByBrand(brand);
	}

	@Override
	public List<Ranks> findByBrandAndYear(String brand, Integer year) {
		// TODO Auto-generated method stub
		return ranksMapper.findByBrandAndYear(brand, year);
	}

	@Override
	public List<Ranks> findOnlyBrand() {
		// TODO Auto-generated method stub
		return ranksMapper.findOnlyBrand();
	}

	@Override
	public List<Ranks> findOnlyCategory() {
		// TODO Auto-generated method stub
		return ranksMapper.findOnlyCategory();
	}

	@Override
	public List<Ranks> findByBrandAndLocation(String brand, String location) {
		// TODO Auto-generated method stub
		return ranksMapper.findByBrandAndLocation(brand, location);
	}

	@Override
	public List<Ranks> findByBrandlimitscoredesc(String brand, Integer startnum, Integer countnum) {
		// TODO Auto-generated method stub
		return ranksMapper.findByBrandlimitscoredesc(brand, startnum, countnum);
	}

	@Override
	public List<Ranks> findByBrandlimitrankAsc(String brand, Integer startnum, Integer countnum) {
		// TODO Auto-generated method stub
		return ranksMapper.findByBrandlimitrankAsc(brand, startnum, countnum);
	}

	@Override
	public List<Ranks> findByNamesameBrand(String brand, String name) {
		// TODO Auto-generated method stub
		return ranksMapper.findByNamesameBrand(brand, name);
	}

	@Override
	public Integer findschoolcount(String brand, Integer year, String location) {
		// TODO Auto-generated method stub
		return ranksMapper.findschoolcount(brand, year, location);
	}

	@Override
	public List<Ranks> findlocation(String brand) {
		// TODO Auto-generated method stub
		return ranksMapper.findlocation(brand);
	}

	
	
}
