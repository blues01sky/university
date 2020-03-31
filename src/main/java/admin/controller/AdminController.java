package admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import admin.entity.Admin;
import admin.services.AdminServices;
import user.services.UserService;
import util.DateUtil;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	DateUtil dateUtil = new DateUtil();
	
	@Autowired
	private AdminServices adminServices;
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String index() {
		return "manager/safe";
	}
	
	@RequestMapping(value="/admin",method=RequestMethod.GET)
	public String admin(HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		List<Admin> result = adminServices.queryAll();
		System.out.println(result);
		request.setAttribute("result",result);
		return "manager/admin/admin";
	}
	
	@RequestMapping(value="/charge",method=RequestMethod.GET)
	public String charge() {
		return "manager/charge/charge";
	}
	
	@RequestMapping(value="/compare",method=RequestMethod.GET)
	public String compare() {
		return "manager/compare/compare";
	}
	
	@RequestMapping(value="/connect",method=RequestMethod.GET)
	public String connect() {
		return "manager/connect/connect";
	}
	
	@RequestMapping(value="/major",method=RequestMethod.GET)
	public String major() {
		return "manager/major/major";
	}
	
	@RequestMapping(value="/remark",method=RequestMethod.GET)
	public String remark() {
		return "manager/remark/remark";
	}
	
	@RequestMapping(value="/score",method=RequestMethod.GET)
	public String score() {
		return "manager/score/score";
	}
	
	@RequestMapping(value="/scoreline",method=RequestMethod.GET)
	public String scoreline() {
		return "manager/scoreline/scoreline";
	}
	
	@RequestMapping(value="/user",method=RequestMethod.GET)
	public String user() {
		
		return "manager/user/user";
	}
	
	@RequestMapping(value="/university",method=RequestMethod.GET)
	public String university() {
		return "manager/university/university";
	}
	
	@RequestMapping(value = "/logout",method=RequestMethod.GET)
	public String logout(HttpSession session,HttpServletRequest request) {
		session.removeAttribute("adminname");
		System.out.println("退出登录成功！");
		request.setAttribute("msg", "退出成功");
		return "manager/safe";
	}
	
	@RequestMapping(value = "/addadmin",method=RequestMethod.GET)
	public String addadmin(HttpSession session,HttpServletRequest request) {
		return "manager/admin/addAdmin";
	}
	
	@RequestMapping(value = "/deladmin",method=RequestMethod.GET)
	public String deladmin(@Param("adminid") String id,HttpSession session,HttpServletRequest request) {
		int adminid = Integer.valueOf(id);
		adminServices.deleteByAdminId(adminid);
		return "manager/admin/addAdmin";
	}
	
	@RequestMapping(value = "/updateadmin",method=RequestMethod.GET)
	public String updateadmin(@Param("adminid") String adminid,HttpSession session,HttpServletRequest request) {
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		return "manager/admin/addAdmin";
	}
	
	@RequestMapping(value = "/addadmin",method=RequestMethod.POST)
	public String addAdmin(HttpSession session,HttpServletRequest request) {
		String adminname = request.getParameter("adminname");
		String adminpassword = request.getParameter("adminpassword");
		Admin admin = new Admin();
		admin.setAdminname(adminname);
		admin.setPassword(adminpassword);
		admin.setCreatetime(dateUtil.getTimeTypeDate());
		admin.setUpdatetime(dateUtil.getTimeTypeDate());
		adminServices.addAdmin(admin);
		request.setAttribute("msg", "添加管理员成功");
		return "manager/admin/admin";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		String adminname = request.getParameter("adminname");
		String password = request.getParameter("password");
		Admin admin = adminServices.findByAdminname(adminname);
		if(admin != null) {
			if (admin.getPassword().equals(password)) {
				session.setAttribute("adminname",adminname);
				request.setAttribute("msg","登录成功");
				return "manager/index";
			} else {
				request.setAttribute("msg","登录错误");
				return "redirect:/admin/index";
			}
		}else {
			request.setAttribute("msg","登录错误");
			return "manager/safe";
		}
	}
}
