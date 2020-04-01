package connect.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import connect.entity.Connect;
import connect.mapper.ConnectMapper;
import connect.services.ConnectServices;

@Service("connectServices")
public class ConnectServicesImpl implements ConnectServices {

	@Autowired
	private ConnectMapper connectMapper;
	
	@Override
	public List<Connect> queryAll() {
		// TODO Auto-generated method stub
		return connectMapper.queryAll();
	}

	@Override
	public Connect findByuniversityname(String universityname) {
		// TODO Auto-generated method stub
		return connectMapper.findByuniversityname(universityname);
	}

	@Override
	public Connect findConnectById(Integer id) {
		// TODO Auto-generated method stub
		return connectMapper.findConnectById(id);
	}

	@Override
	public void deleteByConnectname(String universityname) {
		// TODO Auto-generated method stub
		connectMapper.deleteByConnectname(universityname);
	}

	@Override
	public void deleteByConnectId(Integer id) {
		// TODO Auto-generated method stub
		connectMapper.deleteByConnectId(id);
	}

	@Override
	public void addConnect(Connect connect) {
		// TODO Auto-generated method stub
		connectMapper.addConnect(connect);
	}

	@Override
	public void updateConnectById(Connect connect) {
		// TODO Auto-generated method stub
		connectMapper.updateConnectById(connect);
	}

	@Override
	public void updateConnectByUsername(Connect connect) {
		// TODO Auto-generated method stub
		connectMapper.updateConnectByUsername(connect);
	}

}
