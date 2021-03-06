package area.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import area.entity.Area;
import area.mapper.AreaMapper;
import area.services.AreaService;
import util.DateUtil;

@Service("areaService")
public class AreaServiceImpl implements AreaService {

	@Autowired
	private AreaMapper areaMapper;
	
	DateUtil date = new DateUtil();
	
	@Override
	public List<Area> queryAll() {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了遍历所有的数据库的方法"+"------------------");
		return areaMapper.queryAll();
	}

	@Override
	public Area findByUniversityName(String universityname) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了查找数据通过大学名称的方法"+"------------------");
		return areaMapper.findByUniversityName(universityname);
	}

	@Override
	public Area findById(Integer id) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了查找数据通过id的方法"+"------------------");
		return areaMapper.findById(id);
	}

	@Override
	public List<Area> findOnlyProvince() {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了查询所有地区大学的方法"+"------------------");
		return areaMapper.findOnlyProvince();
	}

	@Override
	public List<Area> findOnlyLevel() {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了查询所有层次大学的方法"+"------------------");
		return areaMapper.findOnlyLevel();
	}
	

	@Override
	public List<Area> findOnlyType() {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了查询所有类型的方法"+"------------------");
		return areaMapper.findOnlyType();
	}

	@Override
	public Integer findAllNum() {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了查询所有大学数量的方法"+"------------------");
		return areaMapper.findAllNum();
	}

	@Override
	public Integer findAllNumByProvince(String province) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了查询地区所有大学数量的方法"+"------------------");
		return areaMapper.findAllNumByProvince(province);
	}

	@Override
	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了通过id删除数据的方法"+"------------------");
		areaMapper.deleteById(id);
	}

	@Override
	public void deleteByUniversityName(String universityname) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了通过大学名称删除数据的方法"+"------------------");
		areaMapper.deleteByUniversityName(universityname);
	}

	@Override
	public void addUniversity(Area area) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了增加一个大学数据 的方法"+"------------------");
		areaMapper.addUniversity(area);
	}

	@Override
	public void updateUniversityById(Area area) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了通过id更新大学信息的方法"+"------------------");
		areaMapper.updateUniversityById(area);
	}

	@Override
	public List<Area> findByType(String type) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了查询所有类型大学的方法"+"------------------");
		return areaMapper.findByType(type);
	}

	@Override
	public List<Area> findByLevel(String level) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了查询所有层次大学的方法"+"------------------");
		return areaMapper.findByLevel(level);
	}

	@Override
	public List<Area> findByProvince(String province) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了查询所有地区大学的方法"+"------------------");
		return areaMapper.findByProvince(province);
	}

	@Override
	public List<Area> findByProvinceLimit(Integer startnum, Integer shownum, String province) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了查询所有地区大学并限制数量的方法"+"------------------");
		return areaMapper.findByProvinceLimit(startnum, shownum, province);
	}

	@Override
	public Integer findAllNumByType(String type) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了查询所有类型大学数量的方法"+"------------------");
		return areaMapper.findAllNumByType(type);
	}

	@Override
	public List<Area> findByTypeLimit(Integer startnum, Integer shownum, String type) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了查询所有类型大学并限制数量的方法"+"------------------");
		return areaMapper.findByTypeLimit(startnum, shownum, type);
	}

	@Override
	public List<Area> findByLevelLimit(Integer startnum, Integer shownum, String level) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了查询所有层次大学并限制数量的方法"+"------------------");
		return areaMapper.findByLevelLimit(startnum, shownum, level);
	}

	@Override
	public Integer findAllNumByLevel(String level) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了查询所有层次大学数量的方法"+"------------------");
		return areaMapper.findAllNumByLevel(level);
	}

	@Override
	public List<Area> findLike(String universityname) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了模糊查询大学的方法"+"------------------");
		return areaMapper.findLike(universityname);
	}

	@Override
	public List<Area> findLikeLimit(Integer startnum, Integer shownum, String universityname) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了模糊查询大学并限制数量的方法"+"------------------");
		return areaMapper.findLikeLimit(startnum, shownum, universityname);
	}

	@Override
	public Integer findLikeCount(String universityname) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"执行了模糊查询大学数量的方法"+"------------------");
		return areaMapper.findLikeCount(universityname);
	}

}
