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
	public String index() {
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
		
		user.setUsername(username);
		user.setPassword(password);
		user.setScore(score);
		user.setProvince(province);
		user.setDepartment(department);
		user.setTelphone(phone);
		
		userService.tianjiaUser(user);
		
		return "redirect:/user/index";
	}
	
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String login(HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		String username = request.getParameter("Username");
		String Password = request.getParameter("Password");
		
		User findPassword = userService.findPassword(username);
		if (findPassword.getUsername().isEmpty() || findPassword.getUsername() == "" || findPassword.getUsername().equals(null)) {
			request.setAttribute("msg","用户不存在，请重试");
			System.out.println("用户不存在，请重试");
			return "redirect:/user/index";
		} else {
			if (findPassword.getPassword().equals(Password)) {
				request.setAttribute("msg","恭喜登录成功");
				System.out.println("恭喜登录成功");
				session.setAttribute("username",findPassword.getUsername());
				return "redirect:/index";
			} else {
				request.setAttribute("msg","密码错误请再次尝试");
				System.out.println("密码错误请再次尝试");
			}
		}
		return "redirect:/user/index";
	}
	
	@RequestMapping(value="/reset",method=RequestMethod.GET)
	public String reset() {
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
		
		User name = userService.findUserByUsername(user.getUsername());
		if (name.getUsername().isEmpty() || name.getUsername() == "" || name.getUsername().equals(null)) {
			request.setAttribute("msg","用户不存在，请重试");
			System.out.println("用户不存在，请重试");
			return "redirect:/user/reset";
		}else {
			if (name.getUsername()==user.getUsername() && name.getDepartment()==user.getDepartment() && name.getProvince() == user.getProvince() && name.getScore() == user.getScore() && name.getTelphone() == user.getTelphone()) {
				request.setAttribute("msg","恭喜重置密码成功");
				System.out.println("恭喜重置密码成功");
				userService.reset(user);
				return "redirect:/user/index";
			} else {
				System.out.println("用户不存在，请重试");
				request.setAttribute("msg","用户不存在，请重试");
			}
		}
		return "redirect:/user/reset";
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
		if (name.getUsername().isEmpty() || name.getUsername() == "" || name.getUsername().equals(null)) {
			request.setAttribute("msg","用户不存在，请重试");
			System.out.println("用户不存在，请重试");
			return "redirect:/user/reset";
		} else {
			if (name.getPassword() == oldpassword) {
				userService.updateUserByUsername(user);
				request.setAttribute("msg","恭喜修改用户信息成功");
				System.out.println("恭喜修改用户信息成功");
				return "redirect:/user/index";
			} else {
				request.setAttribute("msg","修改用户信息失败");
				System.out.println("修改用户信息失败");
			}
		}
		return "redirect:/user/reset";
	}
	
	@RequestMapping(value ="/logout",method=RequestMethod.GET)
	public String logout(HttpSession session,HttpServletRequest request) {
		session.invalidate();
		request.setAttribute("msg", "注销用户登录成功！");
		return "redirect:/index";
	}
	
	
	public static void main(String[] args) {
			
		}
	
}
