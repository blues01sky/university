package score.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import area.entity.Area;
import area.services.AreaService;
import connect.entity.Connect;
import connect.services.ConnectServices;
import score.entity.Score;
import score.services.ScoreServices;
import user.entity.User;
import user.services.UserService;

@Controller
@RequestMapping("/score")
public class ScoreController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private ScoreServices scoreServices;
	@Autowired
	private AreaService areaService;
	@Autowired
	private ConnectServices connectServices;
	
	@RequestMapping(value = "/addscore",method = RequestMethod.GET)
	public String addscorepage() {
		return "manager/score/addscore";
	}
	
	@RequestMapping(value = "/addscore",method = RequestMethod.POST)
	public String addscore(HttpServletRequest request) {
		String universityname = request.getParameter("universityname");
		String year = request.getParameter("year");
		String max = request.getParameter("max");
		String min = request.getParameter("min");
		String average = request.getParameter("average");
		String minimum = request.getParameter("minimum");
		String number = request.getParameter("number");
		String batch = request.getParameter("batch");
		String department = request.getParameter("department");
		String area = request.getParameter("area");
		Score score = new Score();
		score.setArea(area);
		score.setAverage(average);
		score.setBatch(batch);
		score.setDepartment(department);
		score.setMax(max);
		score.setMin(min);
		score.setMinimum(minimum);
		score.setNumber(Integer.valueOf(number));
		score.setUniversityname(universityname);
		score.setYear(Integer.valueOf(year));
		scoreServices.addScore(score);
		return "redirect:/admin/score";
	}
	
	@RequestMapping(value = "/updatescore",method = RequestMethod.GET)
	public String updatechargepage(@Param("scoreid") String scoreid,HttpServletRequest request) {
		Score result = scoreServices.findById(Integer.valueOf(scoreid));
		request.setAttribute("result",result);
		return "manager/score/updatescore";
	}
	
	@RequestMapping(value = "/updatescore",method = RequestMethod.POST)
	public String updatecharge(HttpServletRequest request) {
		String universityname = request.getParameter("universityname");
		String year = request.getParameter("year");
		String max = request.getParameter("max");
		String min = request.getParameter("min");
		String average = request.getParameter("average");
		String minimum = request.getParameter("minimum");
		String number = request.getParameter("number");
		String batch = request.getParameter("batch");
		String department = request.getParameter("department");
		String area = request.getParameter("area");
		String scoreid = request.getParameter("scoreid");
		Score score = new Score();
		score.setArea(area);
		score.setAverage(average);
		score.setBatch(batch);
		score.setDepartment(department);
		score.setMax(max);
		score.setMin(min);
		score.setMinimum(minimum);
		score.setNumber(Integer.valueOf(number));
		score.setUniversityname(universityname);
		score.setYear(Integer.valueOf(year));
		score.setId(Integer.valueOf(scoreid));
		scoreServices.updateScoreById(score);
		return "redirect:/admin/score";
	}
	
	@RequestMapping(value = "/delscore",method = RequestMethod.GET)
	public String delcharge(@Param("scoreid") String scoreid) {
		scoreServices.deleteByScoreId(Integer.valueOf(scoreid));
		return "redirect:/admin/score";
	}
	
	
	@RequestMapping(value="/index",method = RequestMethod.GET)
	public String index(HttpServletRequest request,HttpServletResponse response,@Param("universityname") String universityname) {
		Area area = areaService.findByUniversityName(universityname);
		String province = area.getProvince();
		String department= "理科";
		List<Score> scores = scoreServices.findScoreByUniversitynameAndAreaAndDepartmentYearDesc(universityname, province,department );
		if (scores.size() == 0 ) {
			return "redirect:/index";
		} else {
			List<Area> areas = areaService.findByProvinceLimit(0, 10, province);
			List<Area> levels = areaService.findByLevelLimit(0, 10, "专科");
			List<Area> types = areaService.findByTypeLimit(0, 10, "综合");
			Connect connect = connectServices.findByuniversityname(universityname);
			request.setAttribute("connect",connect);
			request.setAttribute("types",types);
			request.setAttribute("levels",levels);
			request.setAttribute("areas",areas);
			request.setAttribute("scores", scores);
		}
		return "score";
	}
	
	@RequestMapping(value="/select",method = RequestMethod.POST)
	public String show(HttpServletRequest request,HttpServletResponse response) {
		String universityname = request.getParameter("universityname");
		String province = request.getParameter("area");
		String department= request.getParameter("department");
		List<Score> scores = scoreServices.findScoreByUniversitynameAndAreaAndDepartmentYearDesc(universityname,province,department );
		if (scores.size() == 0) {
			return "redirect:/index";
		} else {
			List<Area> areas = areaService.findByProvinceLimit(0, 10, province);
			List<Area> levels = areaService.findByLevelLimit(0, 10, "专科");
			List<Area> types = areaService.findByTypeLimit(0, 10, "综合");
			Connect connect = connectServices.findByuniversityname(universityname);
			request.setAttribute("connect",connect);
			request.setAttribute("types",types);
			request.setAttribute("levels",levels);
			request.setAttribute("areas",areas);
			request.setAttribute("scores", scores);
		}
		return "score";
	}
	
	@RequestMapping(value="/search",method = RequestMethod.POST)
	public String searchscore(HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		String username = (String) session.getAttribute("username");
		if(username != null) {
			User user = userService.findUserByUsername(username);
			String score = request.getParameter("searchscore");
			
			String maxscore = String.valueOf(Integer.valueOf(score)+50);
			String department = user.getDepartment();
			String area = user.getProvince();
			int todayyear = 2019;
			int startnum = 0;
			int pagecount = 20;
			
			List<Score> result = scoreServices.findBigSelves(score,maxscore, todayyear, startnum, pagecount, department, area);
			int Number = scoreServices.findBigSelvesCount(score, maxscore, todayyear, department, area);
			List<Area> types = areaService.findOnlyType();
			List<Area> levels = areaService.findOnlyLevel();
			request.setAttribute("types",types);
			request.setAttribute("levels",levels);
			request.setAttribute("score",Integer.valueOf(score));
			request.setAttribute("Number",Number);
			request.setAttribute("startnum",startnum);
			request.setAttribute("page",1);
			request.setAttribute("shownum",pagecount);
			request.setAttribute("result",result);
		}else {
			System.out.println("请先登录后再进行相关操作巴吧！");
			return "redirect:/index";
		}
		return "searchscore";
	}
	
	@RequestMapping(value = "/fenyebysearchscore",method = RequestMethod.GET)
	public String fenyeBytype(@Param("page") int page,@Param("score") String score,HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		String username = (String) session.getAttribute("username");
		if(username != null) {
			User user = userService.findUserByUsername(username);
			String maxscore = String.valueOf(Integer.valueOf(score)+50);
			String department = user.getDepartment();
			String area = user.getProvince();
			int todayyear = 2019;
			int pagecount = 10;
			int startnum = (page-1) * pagecount;
			
			List<Score> result = scoreServices.findBigSelves(score,maxscore, todayyear, startnum, pagecount, department, area);
			int Number = scoreServices.findBigSelvesCount(score, maxscore, todayyear, department, area);
			
			request.setAttribute("score",Integer.valueOf(score));
			request.setAttribute("Number",Number);
			request.setAttribute("startnum",startnum);
			request.setAttribute("page",page);
			request.setAttribute("shownum",pagecount);
			request.setAttribute("result",result);
		}else {
			System.out.println("请先登录后再进行相关操作巴吧！");
			return "redirect:/index";
		}
		return "searchscore";
	}
}
