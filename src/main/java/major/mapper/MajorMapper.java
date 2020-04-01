package major.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import major.entity.Major;

public interface MajorMapper {
	
	List<Major> queryAll();
	
	Major findById(@Param("id") Integer id);
	
	Integer findCountByProfessional(@Param("professional") String professional,@Param("universityname") String universityname);
	
	List<Major> findOnlyProfessional();
	
	List<Major> findOnlyDegree();
	
	List<Major> findOnlyMajortype();
	
	Integer findCountByDegree(@Param("degree") String degree,@Param("universityname") String universityname);
	
	Integer findCountByMajortype(@Param("majortype") String majortype,@Param("universityname") String universityname);
	
	List<Major> findByProfessional(@Param("professional") String professional);
	
	List<Major> findByDegree(@Param("degree") String degree);
	
	List<Major> findMajorByMajortype(@Param("majortype") String majortype);
	
	List<Major> findByUniversityname(@Param("universityname") String universityname);
	
	void deleteByprofessionalAndUniversityname(@Param("professional") String professional,@Param("universityname") String universityname);
	
	void deleteByDegreeAndUniversityname(@Param("degree") String degree,@Param("universityname") String universityname);
	
	void deleteByMajortypeAndUniversityname(@Param("majortype") String majortype,@Param("universityname") String universityname);
	
	void deleteByUniversityname(@Param("universityname") String universityname);
	
	void deleteByDegree(@Param("degree") String degree);
	
	void deleteByMajortype(@Param("majortype") String majortype);
	
	void deleteByMajorId(@Param("id") Integer id);
	
	void addMajor(Major major);
	
	void updateMajorById(Major major);
	
	void updateMajorByUniversityname(Major major);
	
}
