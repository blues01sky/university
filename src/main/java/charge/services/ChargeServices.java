package charge.services;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import charge.entity.Charge;

public interface ChargeServices {
	List<Charge> queryAll();
	
	Charge findByuniversityname(@Param("universityname") String universityname);
	
	Charge findChargeById(@Param("id") Integer id);
	
	void deleteByChargename(@Param("universityname") String universityname);
	
	void deleteByChargeId(@Param("id") Integer id);
	
	void addCharge(Charge charge);
	
	void updateChargeById(Charge charge);
	
	void updateChargeByUsername(Charge charge);
}
