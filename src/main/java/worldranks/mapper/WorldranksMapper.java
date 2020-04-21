package worldranks.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import worldranks.entity.Worldranks;

public interface WorldranksMapper {
	List<Worldranks> queryAll();
	
	Worldranks findByIdYearDesc(@Param("id") Integer id);
	
	void deleteById(@Param("id") Integer id);
	
	List<Worldranks> findByuniversitynameAndBrand(@Param("university_name") String university_name,@Param("brand") String brand);
	
	List<Worldranks> findAUniversityname(@Param("brand") String brand,@Param("year") Integer year,@Param("ranking") Integer ranking);
	
	List<Worldranks> findOnlyYear(@Param("brand") String brand);
	
	List<Worldranks> findByBrand(@Param("brand") String brand);
	
	List<Worldranks> findByBrandlimit(@Param("brand") String brand,@Param("startnum") Integer startnum,@Param("countnum") Integer countnum);
	
	List<Worldranks> findByBrandAndYear(@Param("brand") String brand,@Param("year") Integer year);
	
	List<Worldranks> findOnlyBrand();
	
	List<Worldranks> findByuniversityname(@Param("university_name") String university_name);
}
