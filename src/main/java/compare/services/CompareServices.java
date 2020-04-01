package compare.services;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import compare.entity.Compare;

public interface CompareServices {
	List<Compare> queryAll();
	
	Compare findBycomparename(@Param("universityname") String universityname);
	
	Compare findcompareById(@Param("id") Integer id);
	
	void deleteBycomparename(@Param("universityname") String universityname);
	
	void deleteBycompareId(@Param("id") Integer id);
	
	void addcompare(Compare compare);
	
	void updatecompareById(Compare compare);
	
	void updatecompareByUsername(Compare compare);
	
}
