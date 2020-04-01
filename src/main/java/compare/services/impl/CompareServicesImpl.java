package compare.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import compare.entity.Compare;
import compare.mapper.CompareMapper;
import compare.services.CompareServices;

@Service("compareServices")
public class CompareServicesImpl implements CompareServices {

	@Autowired
	private CompareMapper compareMapper;
	
	@Override
	public List<Compare> queryAll() {
		// TODO Auto-generated method stub
		return compareMapper.queryAll();
	}

	@Override
	public Compare findBycomparename(String universityname) {
		// TODO Auto-generated method stub
		return compareMapper.findBycomparename(universityname);
	}

	@Override
	public Compare findcompareById(Integer id) {
		// TODO Auto-generated method stub
		return compareMapper.findcompareById(id);
	}

	@Override
	public void deleteBycomparename(String universityname) {
		// TODO Auto-generated method stub
		compareMapper.deleteBycomparename(universityname);
	}

	@Override
	public void deleteBycompareId(Integer id) {
		// TODO Auto-generated method stub
		compareMapper.deleteBycompareId(id);
	}

	@Override
	public void addcompare(Compare compare) {
		// TODO Auto-generated method stub
		compareMapper.addcompare(compare);
	}

	@Override
	public void updatecompareById(Compare compare) {
		// TODO Auto-generated method stub
		compareMapper.updatecompareById(compare);
	}

	@Override
	public void updatecompareByUsername(Compare compare) {
		// TODO Auto-generated method stub
		compareMapper.updatecompareByUsername(compare);
	}
	
}
