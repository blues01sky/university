package major.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import major.entity.Major;
import major.services.MajorServices;

@Controller
@RequestMapping("/major")
public class MajorController {
	
	@Autowired
	private MajorServices majorServices;
	
	@RequestMapping(value = "/addmajor",method = RequestMethod.GET)
	public String addmajorpage() {
		return "manager/major/addmajor";
	}
	
	@RequestMapping(value = "/addmajor",method = RequestMethod.POST)
	public String addmajor(HttpServletRequest request) {
		String universityname = request.getParameter("universityname");
		String degree = request.getParameter("degree");
		String majortype = request.getParameter("majortype");
		String professional = request.getParameter("professional");
		Major major = new Major();
		major.setDegree(degree);
		major.setMajortype(majortype);
		major.setProfessional(professional);
		major.setUniversityname(universityname);
		majorServices.addMajor(major);
		return "redirect:/admin/major";
	}
	
	@RequestMapping(value = "/updatemajor",method = RequestMethod.GET)
	public String updatemajorpage(@Param("majorid") String majorid,HttpServletRequest request) {
		Major result = majorServices.findById(Integer.valueOf(majorid));
		request.setAttribute("result",result);
		return "manager/major/updatemajor";
	}
	
	@RequestMapping(value = "/updatemajor",method = RequestMethod.POST)
	public String updatemajor(HttpServletRequest request) {
		String universityname = request.getParameter("universityname");
		String majorid = request.getParameter("majorid");
		String degree = request.getParameter("degree");
		String majortype = request.getParameter("majortype");
		String professional = request.getParameter("professional");
		Major major = new Major();
		major.setDegree(degree);
		major.setMajortype(majortype);
		major.setProfessional(professional);
		major.setUniversityname(universityname);
		major.setId(Integer.valueOf(majorid));
		majorServices.updateMajorById(major);
		return "redirect:/admin/major";
	}
	
	@RequestMapping(value = "/delmajor",method = RequestMethod.GET)
	public String delmajor(@Param("majorid") String majorid) {
		majorServices.deleteByMajorId(Integer.valueOf(majorid));
		return "redirect:/admin/major";
	}
	
}
