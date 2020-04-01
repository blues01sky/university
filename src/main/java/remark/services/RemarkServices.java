package remark.services;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import remark.entity.Remark;

public interface RemarkServices {
	void addReamrk(Remark remark);

	Remark findById(@Param("id") Integer id);
	
	List<Remark> findByUniversityname(@Param("universityname") String universityname);
	
	List<Remark> findAll();
	
	void deleteByid(@Param("id") Integer id);
	
	void deleteByUniversityname(@Param("universityname") String universityname);
}
