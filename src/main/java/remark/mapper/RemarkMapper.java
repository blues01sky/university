package remark.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import remark.entity.Remark;

public interface RemarkMapper {
	void addReamrk(Remark remark);
	
	Remark findById(@Param("id") Integer id);
	
	List<Remark> findByUniversityname(@Param("universityname") String universityname);
	
	List<Remark> findAll();
	
	void deleteByUniversityname(@Param("universityname") String universityname);
}
