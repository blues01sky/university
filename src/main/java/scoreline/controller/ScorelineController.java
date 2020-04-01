package scoreline.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import scoreline.entity.Scoreline;
import scoreline.services.ScorelineServices;

@Controller
@RequestMapping("/scoreline")
public class ScorelineController {
	
	@Autowired
	private ScorelineServices scorelineServices;
	
	@RequestMapping(value = "/addscoreline",method = RequestMethod.GET)
	public String addscorelinepage() {
		return "manager/scoreline/addscoreline";
	}
	
	@RequestMapping(value = "/addscoreline",method = RequestMethod.POST)
	public String addscoreline(HttpServletRequest request) {
		String province = request.getParameter("province");
		String deparement = request.getParameter("deparement");
		String year = request.getParameter("year");
		String cengci = request.getParameter("cengci");
		String fenshu = request.getParameter("fenshu");
		Scoreline scoreline = new Scoreline();
		
		scoreline.setCengci(cengci);
		scoreline.setDeparement(deparement);
		scoreline.setFenshu(fenshu);
		scoreline.setProvince(province);
		scoreline.setYear(year);
		scorelineServices.addScoreline(scoreline);
		return "redirect:/admin/scoreline";
	}
	
	@RequestMapping(value = "/updatescoreline",method = RequestMethod.GET)
	public String updatescorelinepage(@Param("scorelineid") String scorelineid,HttpServletRequest request) {
		Scoreline result = scorelineServices.findScorelineById(Integer.valueOf(scorelineid));
		request.setAttribute("result",result);
		return "manager/scoreline/updatescoreline";
	}
	
	@RequestMapping(value = "/updatescoreline",method = RequestMethod.POST)
	public String updatescoreline(HttpServletRequest request) {
		String province = request.getParameter("province");
		String deparement = request.getParameter("deparement");
		String year = request.getParameter("year");
		String cengci = request.getParameter("cengci");
		String fenshu = request.getParameter("fenshu");
		String scorelineid = request.getParameter("scorelineid");
		Scoreline scoreline = new Scoreline();
		scoreline.setId(Integer.valueOf(scorelineid));
		scoreline.setCengci(cengci);
		scoreline.setDeparement(deparement);
		scoreline.setFenshu(fenshu);
		scoreline.setProvince(province);
		scoreline.setYear(year);
		scorelineServices.updateScorelineById(scoreline);
		return "redirect:/admin/scoreline";
	}
	
	@RequestMapping(value = "/delscoreline",method = RequestMethod.GET)
	public String delscoreline(@Param("scorelineid") String scorelineid) {
		scorelineServices.deleteByScorelineId(Integer.valueOf(scorelineid));
		return "redirect:/admin/scoreline";
	}
}
