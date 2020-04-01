package connect.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import connect.entity.Connect;
import connect.services.ConnectServices;

@Controller
@RequestMapping("/connect")
public class ConnectController {
	
	@Autowired
	private ConnectServices connectServices;
	
	@RequestMapping(value = "/addconnect",method = RequestMethod.GET)
	public String addconnectpage() {
		return "manager/connect/addconnect";
	}
	
	@RequestMapping(value = "/addconnect",method = RequestMethod.POST)
	public String addconnect(HttpServletRequest request) {
		
		String universityname = request.getParameter("universityname");
		String type = request.getParameter("type");
		String province = request.getParameter("province");
		String telphone = request.getParameter("telphone");
		String address = request.getParameter("address");
		String url = request.getParameter("url");
		
		Connect connect = new Connect();
		
		connect.setAddress(address);
		connect.setProvince(province);
		connect.setTelphone(telphone);
		connect.setType(type);
		connect.setUniversityname(universityname);
		connect.setUrl(url);
		connectServices.addConnect(connect);
		return "redirect:/admin/connect";
	}
	
	@RequestMapping(value = "/updateconnect",method = RequestMethod.GET)
	public String updateconnectpage(@Param("connectid") String connectid,HttpServletRequest request) {
		Connect result = connectServices.findConnectById(Integer.valueOf(connectid));
		request.setAttribute("result",result);
		return "manager/connect/updateconnect";
	}
	
	@RequestMapping(value = "/updateconnect",method = RequestMethod.POST)
	public String updateconnect(HttpServletRequest request) {
		String universityname = request.getParameter("universityname");
		String type = request.getParameter("type");
		String province = request.getParameter("province");
		String telphone = request.getParameter("telphone");
		String address = request.getParameter("address");
		String url = request.getParameter("url");
		String connectid = request.getParameter("connectid");
		Connect connect = new Connect();
		
		connect.setAddress(address);
		connect.setProvince(province);
		connect.setTelphone(telphone);
		connect.setType(type);
		connect.setUniversityname(universityname);
		connect.setUrl(url);
		connect.setId(Integer.valueOf(connectid));
		connectServices.updateConnectById(connect);
		return "redirect:/admin/connect";
	}
	
	@RequestMapping(value = "/delconnect",method = RequestMethod.GET)
	public String delconnect(@Param("connectid") String connectid) {
		connectServices.deleteByConnectId(Integer.valueOf(connectid));
		return "redirect:/admin/connect";
	}
}
