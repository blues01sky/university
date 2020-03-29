package main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import area.entity.Area;
import area.services.AreaService;
import major.entity.Major;
import major.services.MajorServices;

@Controller
@RequestMapping
public class MainController {
	
	@Autowired
	private MajorServices majorServices;
	@Autowired
	private AreaService areaService;
	
	@RequestMapping(value="/index",method = RequestMethod.GET)
	public String index(HttpServletRequest request,HttpServletResponse response) {
		Integer allNum = areaService.findAllNum();
		List<Area> onlyProvince = areaService.findOnlyProvince();
		List<Area> onlyType = areaService.findOnlyType();
		List<Area> onlyLevel = areaService.findOnlyLevel();
		List<Major> onlyMajortype = majorServices.findOnlyMajortype();
		
		List<Area> provinceLimitArea1 = areaService.findByProvinceLimit(0, 10, "北京");
		
		Integer byProvinceNum1 = areaService.findAllNumByProvince("北京");
		
		List<Area> provinceLimitArea2 = areaService.findByProvinceLimit(0, 10, "河南");
		
		Integer byProvinceNum2 = areaService.findAllNumByProvince("河南");
		
		List<Area> provinceLimitArea3 = areaService.findByProvinceLimit(0, 10, "北京");
		
		Integer byProvinceNum3 = areaService.findAllNumByProvince("北京");
		
		List<Area> provinceLimitArea4 = areaService.findByProvinceLimit(0, 10, "河南");
		
		Integer byProvinceNum4 = areaService.findAllNumByProvince("河南");
		
		request.setAttribute("allNum", allNum);
		request.setAttribute("onlyProvince", onlyProvince);
		request.setAttribute("onlyType", onlyType);
		request.setAttribute("onlyLevel", onlyLevel);
		request.setAttribute("onlyMajortype", onlyMajortype);
		request.setAttribute("provinceLimitArea1", provinceLimitArea1);
		request.setAttribute("byProvinceNum1", byProvinceNum1);
		request.setAttribute("provinceLimitArea2", provinceLimitArea2);
		request.setAttribute("byProvinceNum2", byProvinceNum2);
		request.setAttribute("provinceLimitArea3", provinceLimitArea3);
		request.setAttribute("byProvinceNum3", byProvinceNum3);
		request.setAttribute("provinceLimitArea4", provinceLimitArea4);
		request.setAttribute("byProvinceNum4", byProvinceNum4);
		
		return "index";
	}
	
	
	@RequestMapping(value="/compare",method = RequestMethod.GET)
	public String compare() {
		return "compare";
	}
	
	@RequestMapping(value="/instructions",method = RequestMethod.GET)
	public String instructions() {
		return "instructions";
	}
	
	@RequestMapping(value="/login",method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping(value="/province",method = RequestMethod.GET)
	public String province() {
		return "province";
	}
	
	@RequestMapping(value="/score",method = RequestMethod.GET)
	public String score() {
		return "score";
	}
	
	@RequestMapping(value="/scoreline",method = RequestMethod.GET)
	public String scoreline() {
		return "scoreline";
	}
	
}
