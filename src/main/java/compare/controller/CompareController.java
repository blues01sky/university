package compare.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import area.entity.Area;
import area.services.AreaService;
import compare.entity.Compare;
import compare.services.CompareServices;
import connect.entity.Connect;
import connect.services.ConnectServices;

@Controller
@RequestMapping("/compare")
public class CompareController {
	
	@Autowired
	private CompareServices compareServices;
	@Autowired
	private ConnectServices connectServices;
	@Autowired
	private AreaService areaService;
	
	@RequestMapping(value = "/index",method = RequestMethod.GET)
	public String index(@Param("universityname") String universityname,HttpSession session) {
		Compare university1 = compareServices.findBycomparename(universityname);
		List<Area> value1 = areaService.findByProvince(university1.getProvince());
		session.setAttribute("value1", value1);
		session.setAttribute("university1", university1);
		return "compare";
	}
	
	
	@RequestMapping(value = "/instruction",method = RequestMethod.GET)
	public String head(@Param("universityname") String universityname,HttpServletRequest request) {
		Compare result = compareServices.findBycomparename(universityname);
		List<Area> areas = areaService.findByProvinceLimit(0, 10, compareServices.findBycomparename(universityname).getProvince());
		List<Area> levels = areaService.findByLevelLimit(0, 10, "专科");
		List<Area> types = areaService.findByTypeLimit(0, 10, "综合");
		Connect connect = connectServices.findByuniversityname(universityname);
		request.setAttribute("connect",connect);
		request.setAttribute("types",types);
		request.setAttribute("levels",levels);
		request.setAttribute("areas",areas);
		request.setAttribute("result",result);
		return "instructions";
	}
	
	@RequestMapping(value = "/head",method = RequestMethod.GET)
	public String head() {
		return "compare";
	}
	
	@RequestMapping(value ="/addcompare1",method=RequestMethod.POST)
	public String addcompare1(HttpSession session,HttpServletRequest request) {
		Compare university1 = compareServices.findBycomparename(request.getParameter("select1"));
		session.removeAttribute("value1");
		session.setAttribute("university1", university1);
		return "compare";
	}
	@RequestMapping(value ="/addcompare2",method=RequestMethod.POST)
	public String addcompare2(HttpSession session,HttpServletRequest request) {
		Compare university2 = compareServices.findBycomparename(request.getParameter("select2"));
		session.removeAttribute("value2");
		session.setAttribute("university2", university2);
		return "compare";
	}
	@RequestMapping(value ="/addcompare3",method=RequestMethod.POST)
	public String addcompare3(HttpSession session,HttpServletRequest request) {
		Compare university3 = compareServices.findBycomparename(request.getParameter("select3"));
		session.removeAttribute("value3");
		session.setAttribute("university3", university3);
		return "compare";
	}
	@RequestMapping(value ="/addcompare4",method=RequestMethod.POST)
	public String addcompare4(HttpSession session,HttpServletRequest request) {
		Compare university4 = compareServices.findBycomparename(request.getParameter("select4"));
		session.removeAttribute("value4");
		session.setAttribute("university4", university4);
		return "compare";
	}
	
	@RequestMapping(value = "/selecthandle1",method = RequestMethod.POST)
	public void selecthandle1(HttpSession session,@Param("select1") String select1,HttpServletRequest request) {
		List<Area> value1 = areaService.findByProvince(select1);
		session.setAttribute("value1", value1);
	}
	
	@RequestMapping(value = "/selecthandle2",method = RequestMethod.POST)
	public void selecthandle2(HttpSession session,@Param("select2") String select2,HttpServletRequest request) {
		List<Area> value2 = areaService.findByProvince(select2);
		session.setAttribute("value2", value2);
	}
	
	@RequestMapping(value = "/selecthandle3",method = RequestMethod.POST)
	public void selecthandle3(HttpSession session,@Param("select3") String select3) {
		List<Area> value3 = areaService.findByProvince(select3);
		session.setAttribute("value3", value3);
	}
	
	@RequestMapping(value = "/selecthandle4",method = RequestMethod.POST)
	public void selecthandle4(HttpSession session,@Param("select4") String select4) {
		List<Area> value4 = areaService.findByProvince(select4);
		session.setAttribute("value4", value4);
	}
	
	@RequestMapping(value = "/removehandle1",method = RequestMethod.GET)
	public String removehandle1(HttpSession session) {
		session.removeAttribute("university1");
		session.removeAttribute("value1");
		return "redirect:/compare";
	}
	
	@RequestMapping(value = "/removehandle2",method = RequestMethod.GET)
	public String removehandle2(HttpSession session) {
		session.removeAttribute("university2");
		session.removeAttribute("value2");
		return "redirect:/compare";
	}
	@RequestMapping(value = "/removehandle3",method = RequestMethod.GET)
	public String removehandle3(HttpSession session) {
		session.removeAttribute("university3");
		session.removeAttribute("value3");
		return "redirect:/compare";
	}
	@RequestMapping(value = "/removehandle4",method = RequestMethod.GET)
	public String removehandle4(HttpSession session) {
		session.removeAttribute("university4");
		session.removeAttribute("value4");
		return "redirect:/compare";
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
