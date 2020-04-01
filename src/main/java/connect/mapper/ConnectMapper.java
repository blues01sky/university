package connect.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import connect.entity.Connect;

public interface ConnectMapper {
	List<Connect> queryAll();
	
	Connect findByuniversityname(@Param("universityname") String universityname);
	
	Connect findConnectById(@Param("id") Integer id);
	
	void deleteByConnectname(@Param("universityname") String universityname);
	
	void deleteByConnectId(@Param("id") Integer id);
	
	void addConnect(Connect connect);
	
	void updateConnectById(Connect connect);
	
	void updateConnectByUsername(Connect connect);
}
