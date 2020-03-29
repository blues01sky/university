package score.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import area.entity.Area;
import area.mapper.AreaMapper;
import area.services.AreaService;
import score.entity.Score;
import score.mapper.ScoreMapper;
import score.services.ScoreServices;

@Controller
@RequestMapping("/score")
public class ScoreController {
	
	@Autowired
	private ScoreServices scoreServices;
	@Autowired
	private AreaService areaService;
	
	@RequestMapping(value="/index",method = RequestMethod.GET)
	public String index(HttpServletRequest request,HttpServletResponse response,@Param("universityname") String universityname) {
		Area findByUniversityName = areaService.findByUniversityName(universityname);
		String area = findByUniversityName.getProvince();
		String department= "理科";
		List<Score> scores = scoreServices.findScoreByUniversitynameAndAreaAndDepartmentYearDesc(universityname, area,department );
		if (scores.size() == 0 ) {
			return "redirect:/index";
		} else {
			request.setAttribute("scores", scores);
		}
		return "score";
	}
	
	@RequestMapping(value="/select",method = RequestMethod.POST)
	public String show(HttpServletRequest request,HttpServletResponse response) {
		String universityname = request.getParameter("universityname");
		String area = request.getParameter("area");
		String department= request.getParameter("department");
		List<Score> scores = scoreServices.findScoreByUniversitynameAndAreaAndDepartmentYearDesc(universityname,area,department );
		if (scores.size() == 0) {
			return "redirect:/index";
		} else {
			request.setAttribute("scores", scores);
		}
		return "score";
	}
}
