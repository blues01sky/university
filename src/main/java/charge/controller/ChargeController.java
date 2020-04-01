package charge.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import charge.entity.Charge;
import charge.services.ChargeServices;

@Controller
@RequestMapping("/charge")
public class ChargeController {
	
	@Autowired
	private ChargeServices chargeServices;
	
	@RequestMapping(value = "/addcharge",method = RequestMethod.GET)
	public String addchargepage() {
		return "manager/charge/addcharge";
	}
	
	@RequestMapping(value = "/addcharge",method = RequestMethod.POST)
	public String addcharge(HttpServletRequest request) {
		String universityname = request.getParameter("universityname");
		String province = request.getParameter("province");
		String type = request.getParameter("type");
		String cost = request.getParameter("cost");
		Charge charge = new Charge();
		charge.setProvince(province);
		charge.setCost(cost);
		charge.setType(type);
		charge.setUniversityname(universityname);
		
		chargeServices.addCharge(charge);
		System.out.println("增加一个大学的收费信息成功！");
		return "redirect:/admin/charge";
	}
	
	@RequestMapping(value = "/updatecharge",method = RequestMethod.GET)
	public String updatechargepage(@Param("chargeid") String chargeid,HttpServletRequest request) {
		Charge result = chargeServices.findChargeById(Integer.valueOf(chargeid));
		request.setAttribute("result",result);
		return "manager/charge/updatecharge";
	}
	
	@RequestMapping(value = "/updatecharge",method = RequestMethod.POST)
	public String updatecharge(HttpServletRequest request) {
		
		String chargeid = request.getParameter("chargeid");
		String universityname = request.getParameter("universityname");
		String province = request.getParameter("province");
		String type = request.getParameter("type");
		String cost = request.getParameter("cost");
		Charge charge = new Charge();
		charge.setId(Integer.valueOf(chargeid));
		charge.setProvince(province);
		charge.setCost(cost);
		charge.setType(type);
		charge.setUniversityname(universityname);
		chargeServices.updateChargeById(charge);
		return "redirect:/admin/charge";
	}
	
	@RequestMapping(value = "/delcharge",method = RequestMethod.GET)
	public String delcharge(@Param("chargeid") String chargeid) {
		chargeServices.deleteByChargeId(Integer.valueOf(chargeid));
		return "redirect:/admin/charge";
	}
	
	
}
