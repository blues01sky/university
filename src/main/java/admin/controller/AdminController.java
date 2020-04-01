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
import area.entity.Area;
import area.services.AreaService;
import charge.entity.Charge;
import charge.services.ChargeServices;
import compare.entity.Compare;
import compare.services.CompareServices;
import connect.entity.Connect;
import connect.services.ConnectServices;
import remark.entity.Remark;
import remark.services.RemarkServices;
import user.entity.User;
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
	@Autowired
	private AreaService areaService;
	@Autowired
	private ChargeServices chargeServices;
	@Autowired
	private RemarkServices remarkServices;
	@Autowired
	private CompareServices compareServices;
	@Autowired
	private ConnectServices connectServices;
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String index() {
		return "manager/safe";
	}
	
	@RequestMapping(value="/managerindex",method=RequestMethod.GET)
	public String managerindex() {
		return "manager/index";
	}
	
	@RequestMapping(value="/admin",method=RequestMethod.GET)
	public String admin(HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		List<Admin> result = adminServices.queryAll();
		request.setAttribute("result",result);
		return "manager/admin/admin";
	}
	
	@RequestMapping(value="/charge",method=RequestMethod.GET)
	public String charge(HttpServletRequest request) {
		List<Charge> result = chargeServices.queryAll();
		request.setAttribute("result",result);
		return "manager/charge/charge";
	}
	
	@RequestMapping(value="/compare",method=RequestMethod.GET)
	public String compare(HttpServletRequest request) {
		List<Compare> result = compareServices.queryAll();
		request.setAttribute("result",result);
		return "manager/compare/compare";
	}
	
	@RequestMapping(value="/connect",method=RequestMethod.GET)
	public String connect(HttpServletRequest request) {
		List<Connect> result = connectServices.queryAll();
		request.setAttribute("result",result);
		return "manager/connect/connect";
	}
	
	@RequestMapping(value="/major",method=RequestMethod.GET)
	public String major() {
		return "manager/major/major";
	}
	
	@RequestMapping(value="/remark",method=RequestMethod.GET)
	public String remark(HttpServletRequest request) {
		List<Remark> result = remarkServices.findAll();
		request.setAttribute("result",result);
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
	public String user(HttpServletRequest request) {
		List<User> result = userService.queryAll();
		request.setAttribute("result",result);
		return "manager/user/user";
	}
	
	@RequestMapping(value="/adduser",method=RequestMethod.GET)
	public String adduser(HttpServletRequest request) {
		return "manager/user/addUser";
	}
	
	@RequestMapping(value="/deluser",method=RequestMethod.GET)
	public String deluser(HttpServletRequest request,@Param("userid") String userid) {
		userService.deleteByUserId(Integer.valueOf(userid));
		return "redirect:/admin/user";
	}
	
	@RequestMapping(value="/adduser",method=RequestMethod.POST)
	public String addoneuser(HttpServletRequest request) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String score = request.getParameter("score");
		String province = request.getParameter("province");
		String department = request.getParameter("department");
		String telphone = request.getParameter("telphone");
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setScore(score);
		user.setProvince(province);
		user.setDepartment(department);
		user.setTelphone(telphone);
		userService.tianjiaUser(user);
		List<User> result = userService.queryAll();
		request.setAttribute("result",result);
		return "manager/user/user";
	}
	
	@RequestMapping(value="/updateuser",method=RequestMethod.GET)
	public String updateuser(HttpServletRequest request,@Param("userid") String userid) {
		User result = userService.findUserById(Integer.valueOf(userid));
		request.setAttribute("result",result);
		return "manager/user/updateUser";
	}
	
	@RequestMapping(value="/updateuser",method=RequestMethod.POST)
	public String updateuserbyid(HttpServletRequest request) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String score = request.getParameter("score");
		String province = request.getParameter("province");
		String department = request.getParameter("department");
		String telphone = request.getParameter("telphone");
		Integer id = Integer.valueOf(request.getParameter("id"));
		User user = new User();
		user.setId(id);
		user.setUsername(username);
		user.setPassword(password);
		user.setScore(score);
		user.setProvince(province);
		user.setDepartment(department);
		user.setTelphone(telphone);
		userService.updateuserById(user);
		List<User> result = userService.queryAll();
		request.setAttribute("result",result);
		return "manager/user/user";
	}
	
	@RequestMapping(value="/university",method=RequestMethod.GET)
	public String university(HttpServletRequest request) {
		List<Area> lists = areaService.queryAll();
		request.setAttribute("lists",lists);
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
	public String deladmin(@Param("adminid") String adminid,HttpSession session,HttpServletRequest request) {
		int id = Integer.valueOf(adminid);
		adminServices.deleteByAdminId(id);
		return "redirect:/admin/admin";
	}
	
	@RequestMapping(value = "/updateadmin",method=RequestMethod.GET)
	public String updateadmin(@Param("adminid") String adminid,HttpSession session,HttpServletRequest request) {
		Admin result = adminServices.findAdminById(Integer.valueOf(adminid));
		request.setAttribute("result",result);
		return "manager/admin/updateAdmin";
	}
	
	@RequestMapping(value = "/updateadmin",method=RequestMethod.POST)
	public String updateadminbyid(HttpSession session,HttpServletRequest request) {
		int adminid = Integer.valueOf(request.getParameter("adminid"));
		String adminpassword = request.getParameter("adminpassword");
		String adminname = request.getParameter("adminname");
		Admin admin = adminServices.findAdminById(adminid);
			
		admin.setAdminname(adminname);
		admin.setCreatetime(dateUtil.getTimeTypeDate());
		admin.setUpdatetime(dateUtil.getTimeTypeDate());
		admin.setPassword(adminpassword);
		
		adminServices.updateAdminById(admin);
		request.setAttribute("msg","更新信息成功");
		List<Admin> result = adminServices.queryAll();
		request.setAttribute("result",result);
		return "manager/admin/admin";
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
		List<Admin> result = adminServices.queryAll();
		request.setAttribute("result",result);
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
