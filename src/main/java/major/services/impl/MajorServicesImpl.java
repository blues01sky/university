package major.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import major.entity.Major;
import major.mapper.MajorMapper;
import major.services.MajorServices;

@Service("majorServices")
public class MajorServicesImpl implements MajorServices {
	
	@Autowired
	private MajorMapper majorMapper;

	@Override
	public List<Major> queryAll() {
		// TODO Auto-generated method stub
		return majorMapper.queryAll();
	}

	@Override
	public Integer findCountByProfessional(String professional, String universityname) {
		// TODO Auto-generated method stub
		return majorMapper.findCountByProfessional(professional, universityname);
	}

	@Override
	public List<Major> findOnlyProfessional() {
		// TODO Auto-generated method stub
		return majorMapper.findOnlyProfessional();
	}

	@Override
	public List<Major> findOnlyDegree() {
		// TODO Auto-generated method stub
		return majorMapper.findOnlyDegree();
	}

	@Override
	public List<Major> findOnlyMajortype() {
		// TODO Auto-generated method stub
		return majorMapper.findOnlyMajortype();
	}

	@Override
	public Integer findCountByDegree(String degree, String universityname) {
		// TODO Auto-generated method stub
		return majorMapper.findCountByDegree(degree, universityname);
	}

	@Override
	public Integer findCountByMajortype(String majortype, String universityname) {
		// TODO Auto-generated method stub
		return majorMapper.findCountByMajortype(majortype, universityname);
	}

	@Override
	public List<Major> findByProfessional(String professional) {
		// TODO Auto-generated method stub
		return majorMapper.findByProfessional(professional);
	}

	@Override
	public List<Major> findByDegree(String degree) {
		// TODO Auto-generated method stub
		return majorMapper.findByDegree(degree);
	}

	@Override
	public List<Major> findMajorByMajortype(String majortype) {
		// TODO Auto-generated method stub
		return majorMapper.findMajorByMajortype(majortype);
	}

	@Override
	public List<Major> findByUniversityname(String universityname) {
		// TODO Auto-generated method stub
		return majorMapper.findByUniversityname(universityname);
	}

	@Override
	public void deleteByprofessionalAndUniversityname(String professional, String universityname) {
		// TODO Auto-generated method stub
		majorMapper.deleteByprofessionalAndUniversityname(professional, universityname);
	}

	@Override
	public void deleteByDegreeAndUniversityname(String degree, String universityname) {
		// TODO Auto-generated method stub
		majorMapper.deleteByDegreeAndUniversityname(degree, universityname);
	}

	@Override
	public void deleteByMajortypeAndUniversityname(String majortype, String universityname) {
		// TODO Auto-generated method stub
		majorMapper.deleteByMajortypeAndUniversityname(majortype, universityname);
	}

	@Override
	public void deleteByUniversityname(String universityname) {
		// TODO Auto-generated method stub
		majorMapper.deleteByUniversityname(universityname);
	}

	@Override
	public void deleteByDegree(String degree) {
		// TODO Auto-generated method stub
		majorMapper.deleteByDegree(degree);
	}

	@Override
	public void deleteByMajortype(String majortype) {
		// TODO Auto-generated method stub
		majorMapper.deleteByMajortype(majortype);
	}

	@Override
	public void deleteByMajorId(Integer id) {
		// TODO Auto-generated method stub
		majorMapper.deleteByMajorId(id);
	}

	@Override
	public void addMajor(Major major) {
		// TODO Auto-generated method stub
		majorMapper.addMajor(major);
	}

	@Override
	public void updateMajorById(Major major) {
		// TODO Auto-generated method stub
		majorMapper.updateMajorById(major);
	}

	@Override
	public void updateMajorByUniversityname(Major major) {
		// TODO Auto-generated method stub
		majorMapper.updateMajorByUniversityname(major);
	}

}
