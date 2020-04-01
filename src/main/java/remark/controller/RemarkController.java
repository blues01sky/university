package remark.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import remark.entity.Remark;
import remark.services.RemarkServices;
import util.DateUtil;

@Controller
@RequestMapping("/remark")
public class RemarkController {
	DateUtil date = new DateUtil();
	
	@Autowired
	private RemarkServices remarkServices;
	
	@RequestMapping(value="/remark",method = RequestMethod.POST)
	public String remark(String remarkcontent,HttpServletRequest request,HttpServletResponse response) {
		remarkcontent = request.getParameter("remarkcontent");
		String universityname = request.getParameter("universityname");
		Remark remark = new Remark();
		remark.setUpdatetime(date.getTimeTypeDate());
		remark.setUniversityname(universityname);
		remark.setContent(remarkcontent);
		remarkServices.addReamrk(remark);
		return "redirect:/index";
	}
	
	@RequestMapping(value="/delremark",method = RequestMethod.GET)
	public String delremark(@Param("remarkid") String remarkid) {
		remarkServices.deleteByid(Integer.valueOf(remarkid));
		return "redirect:/admin/remark";
	}
}
