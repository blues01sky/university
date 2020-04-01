package charge.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import charge.entity.Charge;
import charge.mapper.ChargeMapper;
import charge.services.ChargeServices;

@Service("chargeServices")
public class ChargeServicesImpl implements ChargeServices {
	
	@Autowired
	private ChargeMapper chargeMapper;

	@Override
	public List<Charge> queryAll() {
		// TODO Auto-generated method stub
		return chargeMapper.queryAll();
	}

	@Override
	public Charge findByuniversityname(String universityname) {
		// TODO Auto-generated method stub
		return chargeMapper.findByuniversityname(universityname);
	}

	@Override
	public Charge findChargeById(Integer id) {
		// TODO Auto-generated method stub
		return chargeMapper.findChargeById(id);
	}

	@Override
	public void deleteByChargename(String universityname) {
		// TODO Auto-generated method stub
		chargeMapper.deleteByChargename(universityname);
	}

	@Override
	public void deleteByChargeId(Integer id) {
		// TODO Auto-generated method stub
		chargeMapper.deleteByChargeId(id);
	}

	@Override
	public void addCharge(Charge charge) {
		// TODO Auto-generated method stub
		chargeMapper.addCharge(charge);
	}

	@Override
	public void updateChargeById(Charge charge) {
		// TODO Auto-generated method stub
		chargeMapper.updateChargeById(charge);
	}

	@Override
	public void updateChargeByUsername(Charge charge) {
		// TODO Auto-generated method stub
		chargeMapper.updateChargeByUsername(charge);
	}
	
}
