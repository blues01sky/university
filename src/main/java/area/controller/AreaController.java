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
}
