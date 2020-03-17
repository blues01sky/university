package area.controller;

import java.util.List;

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
	public String area(String universityname) {
		List<Area> areas = areaService.queryAll();
		System.out.println(areas + "area");
		System.out.println("进来了这个方法");
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
		
	}
	
	@RequestMapping(value="/upd",method=RequestMethod.GET)
	public void upd() {
		
	}
	
	
	@RequestMapping(value="/sel",method=RequestMethod.GET)
	public void sel() {
		
	}
	
}
