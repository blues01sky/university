package main.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import area.entity.Area;
import area.services.AreaService;
import major.entity.Major;
import major.services.MajorServices;
import ranks.entity.Ranks;
import ranks.services.RanksServices;
import util.Bili;
import worldranks.entity.Worldranks;
import worldranks.services.WorldranksServices;

@Controller
@RequestMapping
public class MainController {
	
	@Autowired
	private MajorServices majorServices;
	@Autowired
	private AreaService areaService;
	@Autowired
	private RanksServices ranksServices;
	@Autowired
	private WorldranksServices worldranksServices;
	
	@RequestMapping(value="/index",method = RequestMethod.GET)
	public String index(HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		session.removeAttribute("adminname");
		Integer allNum = areaService.findAllNum();
		List<Area> onlyProvince = areaService.findOnlyProvince();
		List<Area> onlyType = areaService.findOnlyType();
		List<Area> onlyLevel = areaService.findOnlyLevel();
		List<Major> onlyMajortype = majorServices.findOnlyMajortype();
		
		List<Area> provinceLimitArea1 = areaService.findByProvinceLimit(0, 10, "北京市");
		
		Integer byProvinceNum1 = areaService.findAllNumByProvince("北京市");
		
		List<Area> provinceLimitArea2 = areaService.findByProvinceLimit(0, 10, "湖北省");
		
		Integer byProvinceNum2 = areaService.findAllNumByProvince("湖北省");
		
		List<Area> provinceLimitArea3 = areaService.findByProvinceLimit(0, 10, "上海市");
		
		Integer byProvinceNum3 = areaService.findAllNumByProvince("上海市");
		
		List<Area> provinceLimitArea4 = areaService.findByProvinceLimit(0, 10, "陕西省");
		
		Integer byProvinceNum4 = areaService.findAllNumByProvince("陕西省");
		
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
	
	@RequestMapping(value="/bili",method = RequestMethod.GET)
	public String bili(@Param("brand") String brand,HttpServletRequest request) {
		List<Bili> bilis = new ArrayList<Bili>();
		List<Ranks> findlocation = ranksServices.findlocation(brand);
		List<Ranks> findByBrand = ranksServices.findByBrand(brand);
		for(Ranks ranks: findlocation) {
			Bili bili = new Bili();
			bili.setShengfen(ranks.getLocation());
			bili.setShuliang(ranksServices.findschoolcount(brand, findByBrand.get(0).getYear(), ranks.getLocation()));
			bilis.add(bili);
		}
		List<Ranks> OnlyBrand = ranksServices.findOnlyBrand();
		List<Worldranks> OnlyworldBrand = worldranksServices.findOnlyBrand();
		request.setAttribute("OnlyBrand", OnlyBrand);
		request.setAttribute("OnlyworldBrand",OnlyworldBrand);
		request.setAttribute("bilis",bilis);
		return "bili";
	}
	
	@RequestMapping(value="/rank",method = RequestMethod.GET)
	public String rank(HttpServletRequest request) {
		List<Ranks> OnlyBrand = ranksServices.findOnlyBrand();
		List<Worldranks> OnlyworldBrand = worldranksServices.findOnlyBrand();
		List<Ranks> rankslimit = ranksServices.findByBrandlimitscoredesc(OnlyBrand.get(0).getBrand(),0, 30);
		request.setAttribute("rankslimit", rankslimit);
		request.setAttribute("OnlyBrand", OnlyBrand);
		request.setAttribute("OnlyworldBrand",OnlyworldBrand);
		return "rank";
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
