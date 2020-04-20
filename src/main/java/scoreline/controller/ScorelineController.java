package scoreline.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import area.entity.Area;
import area.services.AreaService;
import remark.entity.Remark;
import remark.services.RemarkServices;
import scoreline.entity.Scoreline;
import scoreline.services.ScorelineServices;
import util.DateUtil;

@Controller
@RequestMapping("/scoreline")
public class ScorelineController {
	DateUtil date = new DateUtil();
	
	@Autowired
	private ScorelineServices scorelineServices;
	@Autowired
	private AreaService areaService;
	@Autowired
	private RemarkServices remarkServices;
	
	
	@RequestMapping(value="/remarkscoreline",method = RequestMethod.POST)
	public String remarkscoreline(String remarkcontent,HttpServletRequest request,HttpServletResponse response) {
		remarkcontent = request.getParameter("remarkcontent");
		String province = request.getParameter("province");
		Remark remark = new Remark();
		remark.setUpdatetime(date.getTimeTypeDate());
		remark.setUniversityname("对"+province+"地区的分数线评论");
		remark.setContent(remarkcontent);
		remarkServices.addReamrk(remark);
		return "redirect:/index";
	}
	
	@RequestMapping(value = "/index",method = RequestMethod.GET)
	public String index(HttpServletRequest request) {
		String province = "北京市";
		String deparement1 = "理科";
		String deparement2 = "文科";
		Integer strat = 0;
		Integer number = 30;
		List<Scoreline> result1 = scorelineServices.findByProvinceDepartment(province, deparement1, strat, number);
		List<Scoreline> result2 = scorelineServices.findByProvinceDepartment(province, deparement2, strat, number);
		List<Area> areas = areaService.findByProvinceLimit(0, 10, province);
		List<Area> levels = areaService.findByLevelLimit(0, 10, "专科");
		List<Area> types = areaService.findByTypeLimit(0, 10, "重点");
		request.setAttribute("types",types);
		request.setAttribute("levels",levels);
		request.setAttribute("areas",areas);
		request.setAttribute("result2",result2);
		request.setAttribute("result1",result1);
		return "scoreline";
	}
	
	@RequestMapping(value = "/xuanze",method = RequestMethod.POST)
	public String xuanze(HttpServletRequest request) {
		String province = request.getParameter("province");
		String deparement1 = "理科";
		String deparement2 = "文科";
		Integer strat = 0;
		Integer number = 30;
		List<Scoreline> result1 = scorelineServices.findByProvinceDepartment(province, deparement1, strat, number);
		List<Scoreline> result2 = scorelineServices.findByProvinceDepartment(province, deparement2, strat, number);
		List<Area> areas = areaService.findByProvinceLimit(0, 10, province);
		List<Area> levels = areaService.findByLevelLimit(0, 10, "本科");
		List<Area> types = areaService.findByTypeLimit(0, 10, "重点");
		request.setAttribute("types",types);
		request.setAttribute("levels",levels);
		request.setAttribute("areas",areas);
		request.setAttribute("result2",result2);
		request.setAttribute("result1",result1);
		return "scoreline";
	}
	
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
