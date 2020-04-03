package compare.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import area.entity.Area;
import area.services.AreaService;
import compare.entity.Compare;
import compare.services.CompareServices;

@Controller
@RequestMapping("/compare")
public class CompareController {
	
	@Autowired
	private CompareServices compareServices;
	@Autowired
	private AreaService areaService;
	
	@RequestMapping(value = "/index",method = RequestMethod.GET)
	public String index(@Param("universityname") String universityname,HttpServletRequest request) {
		Compare university1 = compareServices.findBycomparename(universityname);
		request.setAttribute("university1", university1);
		return "compare";
	}
	
	@RequestMapping(value = "/selecthandle",method = RequestMethod.POST)
	public JSONObject selecthandle(HttpServletRequest request,@Param("select1") String select1) {
		List<Area> value1 = areaService.findByProvince(select1);
		Map<String, Area> map = new HashMap<String, Area>();
		int i = 1;
		for(Area area : value1) {
			map.put("area"+i,area);
			i++;
		}
		JSONObject jsonObject = new JSONObject(map);
		System.out.println(jsonObject);
		return jsonObject;
	}
	
	
	
	@RequestMapping(value="/compare",method=RequestMethod.GET)
	public String compare(HttpServletRequest request) {
		List<Compare> result = compareServices.queryAll();
		request.setAttribute("result",result);
		return "manager/compare/compare";
	}
	
	@RequestMapping(value = "/addcompare",method = RequestMethod.GET)
	public String addcomparepage() {
		return "manager/compare/addcompare";
	}
	
	@RequestMapping(value = "/addcompare",method = RequestMethod.POST)
	public String addcompare(HttpServletRequest request) {
		String universityname = request.getParameter("universityname");
		String type = request.getParameter("type");
		String province = request.getParameter("province");
		Integer is211 = Integer.valueOf(request.getParameter("is211"));
		Integer is985 = Integer.valueOf(request.getParameter("is985"));
		String subjection = request.getParameter("subjection");
		Integer graduate = Integer.valueOf(request.getParameter("graduate"));
		Integer focus = Integer.valueOf(request.getParameter("focus"));
		Integer maserpoint = Integer.valueOf(request.getParameter("maserpoint"));
		Integer doctoral = Integer.valueOf(request.getParameter("doctoral"));
		Integer academician = Integer.valueOf(request.getParameter("academician"));
		String book = request.getParameter("book");
		String area = request.getParameter("area");
		String createtime = request.getParameter("createtime");
		String telphone = request.getParameter("telphone");
		String instructions = request.getParameter("instructions");
		String major = request.getParameter("major");
		String url = request.getParameter("url");
		String teacher = request.getParameter("teacher");
		String cost = request.getParameter("cost");
		String schoolship = request.getParameter("schoolship");
		String entrance = request.getParameter("entrance");
		String students = request.getParameter("students");
		String accommodation = request.getParameter("accommodation");
		String employment = request.getParameter("employment");
		Compare compare = new  Compare();
		compare.setAcademician(academician);
		compare.setAccommodation(accommodation);
		compare.setArea(area);
		compare.setBook(book);
		compare.setCost(cost);
		compare.setCreatetime(createtime);
		compare.setDoctoral(doctoral);
		compare.setEmployment(employment);
		compare.setEntrance(entrance);
		compare.setFocus(focus);
		compare.setGraduate(graduate);
		compare.setInstructions(instructions);
		compare.setIs211(is211);
		compare.setIs985(is985);
		compare.setMajor(major);
		compare.setMaserpoint(maserpoint);
		compare.setProvince(province);
		compare.setSchoolship(schoolship);
		compare.setStudents(students);
		compare.setSubjection(subjection);
		compare.setTeacher(teacher);
		compare.setTelphone(telphone);
		compare.setType(type);
		compare.setUniversityname(universityname);
		compare.setUrl(url);
		compareServices.addcompare(compare);
		return "redirect:/compare/compare";
	}
	
	@RequestMapping(value = "/updatecompare",method = RequestMethod.GET)
	public String updatecomparepage(@Param("compareid") String compareid,HttpServletRequest request) {
		Compare result = compareServices.findcompareById(Integer.valueOf(compareid));
		request.setAttribute("result",result);
		return "manager/compare/updatecompare";
	}
	
	@RequestMapping(value = "/updatecompare",method = RequestMethod.POST)
	public String updatecompare(HttpServletRequest request) {
		String universityname = request.getParameter("universityname");
		String compareid = request.getParameter("compareid");
		String type = request.getParameter("type");
		String province = request.getParameter("province");
		Integer is211 = Integer.valueOf(request.getParameter("is211"));
		Integer is985 = Integer.valueOf(request.getParameter("is985"));
		String subjection = request.getParameter("subjection");
		Integer graduate = Integer.valueOf(request.getParameter("graduate"));
		Integer focus = Integer.valueOf(request.getParameter("focus"));
		Integer maserpoint = Integer.valueOf(request.getParameter("maserpoint"));
		Integer doctoral = Integer.valueOf(request.getParameter("doctoral"));
		Integer academician = Integer.valueOf(request.getParameter("academician"));
		String book = request.getParameter("book");
		String area = request.getParameter("area");
		String createtime = request.getParameter("createtime");
		String telphone = request.getParameter("telphone");
		String instructions = request.getParameter("instructions");
		String major = request.getParameter("major");
		String url = request.getParameter("url");
		String teacher = request.getParameter("teacher");
		String cost = request.getParameter("cost");
		String schoolship = request.getParameter("schoolship");
		String entrance = request.getParameter("entrance");
		String students = request.getParameter("students");
		String accommodation = request.getParameter("accommodation");
		String employment = request.getParameter("employment");
		Compare compare = new  Compare();
		compare.setAcademician(academician);
		compare.setAccommodation(accommodation);
		compare.setArea(area);
		compare.setBook(book);
		compare.setCost(cost);
		compare.setCreatetime(createtime);
		compare.setDoctoral(doctoral);
		compare.setEmployment(employment);
		compare.setEntrance(entrance);
		compare.setFocus(focus);
		compare.setGraduate(graduate);
		compare.setInstructions(instructions);
		compare.setIs211(is211);
		compare.setIs985(is985);
		compare.setMajor(major);
		compare.setMaserpoint(maserpoint);
		compare.setProvince(province);
		compare.setSchoolship(schoolship);
		compare.setStudents(students);
		compare.setSubjection(subjection);
		compare.setTeacher(teacher);
		compare.setTelphone(telphone);
		compare.setType(type);
		compare.setUniversityname(universityname);
		compare.setUrl(url);
		compare.setId(Integer.valueOf(compareid));
		compareServices.updatecompareById(compare);
		return "redirect:/compare/compare";
	}
	
	@RequestMapping(value = "/delcompare",method = RequestMethod.GET)
	public String delcompare(@Param("compareid") String compareid) {
		compareServices.deleteBycompareId(Integer.valueOf(compareid));
		return "redirect:/compare/compare";
	}
	
}
