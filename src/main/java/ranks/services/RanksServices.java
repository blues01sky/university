package ranks.services;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import ranks.entity.Ranks;

public interface RanksServices {
	List<Ranks> queryAll();
	
	Ranks findByIdYearDesc(@Param("id") Integer id);
	
	List<Ranks> findByNameYearDesc(@Param("name") String name);
	
	void deleteById(@Param("id") Integer id);
	
	List<Ranks> findByBrand(@Param("brand") String brand);
	
	List<Ranks> findByBrandlimitscoredesc(@Param("brand") String brand,@Param("startnum") Integer startnum,@Param("countnum") Integer countnum);
	
	List<Ranks> findByBrandlimitrankAsc(@Param("brand") String brand,@Param("startnum") Integer startnum,@Param("countnum") Integer countnum);
	
	List<Ranks> findByBrandAndYear(@Param("brand") String brand,@Param("year") Integer year);
	
	List<Ranks> findOnlyBrand();

	List<Ranks> findByNamesameBrand(@Param("brand") String brand,@Param("name") String name);
	
	List<Ranks> findOnlyCategory();
	
	List<Ranks> findByBrandAndLocation(@Param("brand") String brand,@Param("location") String location);
}
