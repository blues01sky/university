package score.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import score.entity.Score;
import score.mapper.ScoreMapper;

@Controller
@RequestMapping("/score")
public class ScoreController {
	
	@Autowired
	private ScoreMapper scoreMapper;
	
	@RequestMapping(value="/index",method = RequestMethod.GET)
	public String index(HttpServletRequest request,HttpServletResponse response,@Param("universityname") String universityname) {
		String area = "理科";
		String department = "河南";
		System.out.println(universityname+"universityname");
		List<Score> ScoreByUniversitynames = scoreMapper.findScoreByUniversitynameAndAreaAndDepartmentYearDesc(universityname,area,department);
		
		request.setAttribute("ScoreByUniversitynames", ScoreByUniversitynames);
		System.out.println(ScoreByUniversitynames+"ScoreByUniversitynames");
		
		return "score";
	}
}
