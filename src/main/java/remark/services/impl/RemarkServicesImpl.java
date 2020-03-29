package remark.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import remark.entity.Remark;
import remark.mapper.RemarkMapper;
import remark.services.RemarkServices;
import util.DateUtil;

@Service("remarkServices")
public class RemarkServicesImpl implements RemarkServices {

	DateUtil date = new DateUtil();
	
	@Autowired
	private RemarkMapper remarkMapper;
	
	@Override
	public void addReamrk(Remark remark) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"增加一个评论"+"------------------");
		remarkMapper.addReamrk(remark);
	}

	@Override
	public Remark findById(Integer id) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"通过id查一个评论"+"------------------");
		return remarkMapper.findById(id);
	}

	@Override
	public List<Remark> findByUniversityname(String universityname) {
		// TODO Auto-generated method stub.
		System.out.println("----------"+date.getDate()+"-------------------"+"通过大学名字查评论"+"------------------");
		return remarkMapper.findByUniversityname(universityname);
	}

	@Override
	public List<Remark> findAll() {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"查询所有评论"+"------------------");
		return remarkMapper.findAll();
	}

	@Override
	public void deleteByUniversityname(String universityname) {
		// TODO Auto-generated method stub
		System.out.println("----------"+date.getDate()+"-------------------"+"删除评论"+"------------------");
		remarkMapper.deleteByUniversityname(universityname);
	}

}
