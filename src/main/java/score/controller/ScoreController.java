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
