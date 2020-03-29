package user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import user.entity.User;
import user.services.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/index",method = RequestMethod.GET)
	public String index(HttpServletRequest request,HttpServletResponse response) {
		request.setAttribute("msg","0");
		return "login";
	}
	
	@RequestMapping(value="/regist",method = RequestMethod.POST)
	public String regist(HttpServletRequest request,HttpServletResponse response) {
		User user = new User();
		String username = request.getParameter("Username");
		String password = request.getParameter("Password");
		String score = request.getParameter("score");
		String province = request.getParameter("province");
		String department = request.getParameter("department");
		String phone = request.getParameter("Phone");
		
		User check = userService.findUserByUsername(username);
		if(check != null) {
			request.setAttribute("msg","用户已存在");
			return "login";
		}
		
		user.setUsername(username);
		user.setPassword(password);
		user.setScore(score);
		user.setProvince(province);
		user.setDepartment(department);
		user.setTelphone(phone);
		
		userService.tianjiaUser(user);
		request.setAttribute("msg","恭喜注册成功");
		
		return "login";
	}
	
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String login(HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		String username = request.getParameter("Username");
		String Password = request.getParameter("Password");
		
		User findPassword = userService.findByPassword(username);
		if (findPassword != null) {
			if (findPassword.getPassword().equals(Password)) {
				System.out.println("恭喜登录成功");
				session.setAttribute("msg","恭喜登录成功");
				session.setAttribute("username",findPassword.getUsername());
				return "redirect:/index";
			} else {
				request.setAttribute("msg","密码错误请再次尝试");
				System.out.println("密码错误请再次尝试");
			}
		} else {
			request.setAttribute("msg","用户不存在");
			System.out.println("用户不存在，请重试");
			return "login";
		}
		return "login";
	}
	
	@RequestMapping(value="/reset",method=RequestMethod.GET)
	public String reset(HttpServletRequest request) {
		request.setAttribute("msg","0");
		return "reset";
	}
	
	@RequestMapping(value="/reset",method=RequestMethod.POST)
	public String resetPassword(HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		
		User user = new User();
		
		user.setUsername(request.getParameter("Username"));
		user.setScore(request.getParameter("score"));
		user.setProvince(request.getParameter("province"));
		user.setDepartment(request.getParameter("department"));
		user.setTelphone(request.getParameter("Phone"));
		user.setPassword("1234");
		User name = userService.findUserByUsername(user.getUsername());
		if (name.getUsername() != null) {
			if (name.getUsername().equals(user.getUsername()) && name.getDepartment().equals(user.getDepartment()) && name.getProvince().equals(user.getProvince()) && name.getScore().equals(user.getScore()) && name.getTelphone().equals(user.getTelphone())) {
				request.setAttribute("msg","恭喜重置密码成功");
				System.out.println("恭喜重置密码成功");
				userService.reset(user);
				return "login";
			} else {
				System.out.println("重置密码失败，请重试");
				request.setAttribute("msg","重置密码失败，请重试");
			}
		}else {
			request.setAttribute("msg","不存在");
			System.out.println("用户不存在，请重试");
			return "reset";
		}
		return "reset";
	}
	
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String update(HttpServletRequest request,HttpServletResponse response) {
		
		User user = new User();
		
		user.setUsername(request.getParameter("Username"));
		user.setPassword(request.getParameter("newPassword"));
		String oldpassword = request.getParameter("oldPassword");
		user.setScore(request.getParameter("score"));
		user.setProvince(request.getParameter("province"));
		user.setDepartment(request.getParameter("department"));
		user.setTelphone(request.getParameter("Phone"));
		
		User name = userService.chaByUsername(user.getUsername());
		if (name.getUsername() != null) {
			if (name.getPassword().equals(oldpassword)) {
				userService.updateUserByUsername(user);
				request.setAttribute("msg","恭喜修改用户信息成功");
				System.out.println("恭喜修改用户信息成功");
				return "login";
			} else {
				request.setAttribute("msg","修改用户信息失败");
				System.out.println("修改用户信息失败");
			}
		} else {
			request.setAttribute("msg","用户不存在，请重试");
			System.out.println("用户不存在，请重试");
			return "reset";
		}
		return "reset";
	}
	
	@RequestMapping(value ="/logout",method=RequestMethod.GET)
	public String logout(HttpSession session,HttpServletRequest request) {
		session.removeAttribute("username");
		session.setAttribute("msg", "注销用户登录成功！");
		return "redirect:/index";
	}
	
	
	public static void main(String[] args) {
			
		}
	
}
