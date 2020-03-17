package area.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import area.entity.Area;
import area.services.AreaService;

@Controller
@RequestMapping("/area")
public class AreaController {
	
	@Autowired
	private AreaService areaService;
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String area(HttpServletResponse response,HttpServletRequest request,String universityname,String province) {
		List<Area> areas = areaService.findOnlyProvince();
		List<Area> levels = areaService.findOnlyLevel();
		List<Area> types = areaService.findOnlyType();
		Integer allnums = areaService.findAllNum();
		Integer allNumProvince = areaService.findAllNumByProvince(province);
		List<Area> findByLevel = areaService.findByLevel("本科");
		List<Area> findByProvince = areaService.findByProvince("北京");
		List<Area> findByType = areaService.findByType("综合");
		int startnum = 10;
		int shownum = 2;
		List<Area> findByProvinceLimit = areaService.findByProvinceLimit(startnum, shownum,"河南");
		System.out.println(findByProvinceLimit+"findByProvinceLimit");
		System.out.println(findByLevel + "findByLevel");
		System.out.println(findByProvince + "findByProvince");
		System.out.println(findByType + "findByType");
		System.out.println(allnums + "allnums");
		System.out.println(allNumProvince + "allNumProvince");
		System.out.println(types + "types");
		System.out.println(areas + "areas");
		System.out.println(levels + "levels");
		return "index";
	}
	 
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public void add() {
		Area area = new Area();
		area.setUniversityname("清华大学");
		area.setProvince("北京");
		area.setType("重点");
		area.setIs211(0);
		area.setIs985(1);
		area.setLevel("专科");
		area.setUrl("Tencent");
		System.out.println(area);
		areaService.addUniversity(area);
	}
	
	@RequestMapping(value="/del",method=RequestMethod.GET)
	public void del() {
		areaService.deleteByUniversityName("清华大学");
		
	}
	
	@RequestMapping(value="/upd",method=RequestMethod.GET)
	public void upd() {
		Area area = new Area();
		area.setId(1);
		area.setUniversityname("清华大学");
		area.setProvince("北京");
		area.setType("重点");
		area.setIs211(0);
		area.setIs985(1);
		area.setLevel("专科");
		area.setUrl("Tencent");
		System.out.println(area);
		areaService.updateUniversityById(area);
	}
	
	
	@RequestMapping(value="/sel",method=RequestMethod.GET)
	public void sel() {
		
	}
	
}
