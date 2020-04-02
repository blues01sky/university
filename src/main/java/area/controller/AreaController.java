package area.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
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
	
	
	@RequestMapping(value = "/addarea",method = RequestMethod.GET)
	public String addschoolpage() {
		return "manager/university/adduniversity";
	}
	
	@RequestMapping(value = "/updatearea",method = RequestMethod.GET)
	public String updateareapage(@Param("areaid") String areaid,HttpServletRequest request) {
		Area result = areaService.findById(Integer.valueOf(areaid));
		request.setAttribute("result",result);
		return "manager/university/updateuniversity";
	}
	
	@RequestMapping(value = "/addarea",method = RequestMethod.POST)
	public String addarea(HttpServletRequest request) {
		String universityname = request.getParameter("universityname");
		String province = request.getParameter("province");
		String type = request.getParameter("type");
		String is211 = request.getParameter("is211");
		String is985 = request.getParameter("is985");
		String level = request.getParameter("level");
		String url = request.getParameter("url");
		Area area = new Area();
		area.setIs211(Integer.valueOf(is211));
		area.setIs985(Integer.valueOf(is985));
		area.setLevel(level);
		area.setProvince(province);
		area.setType(type);
		area.setUniversityname(universityname);
		area.setUrl(url);
		areaService.addUniversity(area);
		return "redirect:/admin/university";
	}
	
	@RequestMapping(value = "/updatearea",method = RequestMethod.POST)
	public String updatearea(HttpServletRequest request) {
		String universityname = request.getParameter("universityname");
		String province = request.getParameter("province");
		String type = request.getParameter("type");
		String is211 = request.getParameter("is211");
		String is985 = request.getParameter("is985");
		String level = request.getParameter("level");
		String url = request.getParameter("url");
		Area area = new Area();
		area.setIs211(Integer.valueOf(is211));
		area.setIs985(Integer.valueOf(is985));
		area.setLevel(level);
		area.setProvince(province);
		area.setType(type);
		area.setUniversityname(universityname);
		area.setUrl(url);
		areaService.updateUniversityById(area);
		return "redirect:/admin/university";
	}
	
	@RequestMapping(value = "/delarea",method = RequestMethod.GET)
	public String delarea(@Param("areaid") String areaid,HttpServletRequest request) {
		areaService.deleteById(Integer.valueOf(areaid));
		return "redirect:/admin/university";
	}
	
	
	@RequestMapping(value = "/fenyebylevel",method = RequestMethod.GET)
	public String fenyeBylevel(@Param("level") String level,@Param("page") int page,HttpServletRequest request,HttpServletResponse response) {
		Integer Number = areaService.findAllNumByLevel(level);
		int shownum = 10;
		int startnum = (page-1) * shownum;
		List<Area> result = areaService.findByLevelLimit(startnum, shownum, level);
		List<Area> types = areaService.findOnlyType();
		List<Area> levels = areaService.findOnlyLevel();
		request.setAttribute("types",types);
		request.setAttribute("levels",levels);
		request.setAttribute("Number",Number);
		request.setAttribute("page",page);
		request.setAttribute("startnum",startnum);
		request.setAttribute("shownum",shownum);
		request.setAttribute("result",result);
		
		return "level";
	}
	
	@RequestMapping(value = "/level",method = RequestMethod.GET)
	public String level(@Param("level") String level,HttpServletRequest request,HttpServletResponse response) {
		Integer Number = areaService.findAllNumByLevel(level);
		int startnum = 0;
		int shownum = 10;
		List<Area> result = areaService.findByLevelLimit(startnum,shownum,level);
		List<Area> types = areaService.findOnlyType();
		List<Area> levels = areaService.findOnlyLevel();
		request.setAttribute("types",types);
		request.setAttribute("levels",levels);
		request.setAttribute("Number",Number);
		request.setAttribute("startnum",startnum);
		request.setAttribute("page",1);
		request.setAttribute("shownum",shownum);
		request.setAttribute("result",result);
		return "level";
	}
	
	@RequestMapping(value = "/like",method = RequestMethod.POST)
	public String findlike(HttpServletRequest request,HttpServletResponse response) {
		String universityname = request.getParameter("schoolname");
		Integer Number = areaService.findLikeCount(universityname);
		int startnum = 0;
		int shownum = 50;
		List<Area> result = areaService.findLike(universityname);
		List<Area> types = areaService.findOnlyType();
		List<Area> levels = areaService.findOnlyLevel();
		request.setAttribute("types",types);
		request.setAttribute("levels",levels);
		request.setAttribute("Number",Number);
		request.setAttribute("startnum",startnum);
		request.setAttribute("page",1);
		request.setAttribute("shownum",shownum);
		request.setAttribute("result",result);
		return "level";
	}
	
	@RequestMapping(value = "/fenyebytype",method = RequestMethod.GET)
	public String fenyeBytype(@Param("type") String type,@Param("page") int page,HttpServletRequest request,HttpServletResponse response) {
		Integer Number = areaService.findAllNumByType(type);
		int shownum = 10;
		int startnum = (page-1) * shownum;
		List<Area> result = areaService.findByTypeLimit(startnum, shownum, type);
		List<Area> types = areaService.findOnlyType();
		List<Area> levels = areaService.findOnlyLevel();
		request.setAttribute("types",types);
		request.setAttribute("levels",levels);
		request.setAttribute("Number",Number);
		request.setAttribute("page",page);
		request.setAttribute("startnum",startnum);
		request.setAttribute("shownum",shownum);
		request.setAttribute("result",result);
		
		return "type";
	}
	
	@RequestMapping(value = "/types",method = RequestMethod.GET)
	public String type(@Param("type") String type,HttpServletRequest request,HttpServletResponse response) {
		Integer Number = areaService.findAllNumByType(type);
		int startnum = 0;
		int shownum = 10;
		List<Area> result = areaService.findByTypeLimit(startnum,shownum,type);
		List<Area> types = areaService.findOnlyType();
		List<Area> levels = areaService.findOnlyLevel();
		request.setAttribute("types",types);
		request.setAttribute("levels",levels);
		request.setAttribute("Number",Number);
		request.setAttribute("startnum",startnum);
		request.setAttribute("page",1);
		request.setAttribute("shownum",shownum);
		request.setAttribute("result",result);
		return "type";
	}
	
	@RequestMapping(value = "/types",method = RequestMethod.POST)
	public String searchtype(HttpServletRequest request,HttpServletResponse response) {
		String type = request.getParameter("majorname");
		Integer Number = areaService.findAllNumByType(type);
		int startnum = 0;
		int shownum = 10;
		List<Area> result = areaService.findByTypeLimit(startnum,shownum,type);
		List<Area> types = areaService.findOnlyType();
		List<Area> levels = areaService.findOnlyLevel();
		request.setAttribute("types",types);
		request.setAttribute("levels",levels);
		request.setAttribute("Number",Number);
		request.setAttribute("startnum",startnum);
		request.setAttribute("page",1);
		request.setAttribute("shownum",shownum);
		request.setAttribute("result",result);
		return "type";
	}
	
	@RequestMapping(value = "/fenye",method = RequestMethod.GET)
	public String fenye(@Param("province") String province,@Param("page") int page,HttpServletRequest request,HttpServletResponse response) {
		Integer Number = areaService.findAllNumByProvince(province);
		int shownum = 10;
		int startnum = (page-1) * shownum;
		List<Area> result = areaService.findByProvinceLimit(startnum, shownum, province);
		List<Area> types = areaService.findOnlyType();
		List<Area> levels = areaService.findOnlyLevel();
		request.setAttribute("types",types);
		request.setAttribute("levels",levels);
		request.setAttribute("Number",Number);
		request.setAttribute("page",page);
		request.setAttribute("startnum",startnum);
		request.setAttribute("shownum",shownum);
		request.setAttribute("result",result);
		
		return "province";
	}
	
	@RequestMapping(value = "/index",method = RequestMethod.GET)
	public String province(@Param("province") String province,HttpServletRequest request,HttpServletResponse response) {
		Integer Number = areaService.findAllNumByProvince(province);
		int startnum = 0;
		int shownum = 10;
		List<Area> result = areaService.findByProvinceLimit(startnum, shownum, province);
		List<Area> types = areaService.findOnlyType();
		List<Area> levels = areaService.findOnlyLevel();
		request.setAttribute("types",types);
		request.setAttribute("levels",levels);
		request.setAttribute("Number",Number);
		request.setAttribute("startnum",startnum);
		request.setAttribute("page",1);
		request.setAttribute("shownum",shownum);
		request.setAttribute("result",result);
		return "province";
	}
	
	@RequestMapping(value = "/index",method = RequestMethod.POST)
	public String searchprovince(HttpServletRequest request,HttpServletResponse response) {
		String province = request.getParameter("provincename");
		Integer Number = areaService.findAllNumByProvince(province);
		int startnum = 0;
		int shownum = 50;
		List<Area> result = areaService.findByProvinceLimit(startnum, shownum, province);
		List<Area> types = areaService.findOnlyType();
		List<Area> levels = areaService.findOnlyLevel();
		request.setAttribute("types",types);
		request.setAttribute("levels",levels);
		request.setAttribute("Number",Number);
		request.setAttribute("startnum",startnum);
		request.setAttribute("page",1);
		request.setAttribute("shownum",shownum);
		request.setAttribute("result",result);
		return "province";
	}
	
/*	@RequestMapping(value = "/index",method = RequestMethod.POST)
	public void ajax(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		String province = request.getParameter("province");
		Integer Number = areaService.findAllNumByProvince(province);
		int startnum = 0;
		int shownum = 10;
		List<Area> result = areaService.findByProvinceLimit(startnum, shownum, province);
		request.setAttribute("Number",Number);
		request.setAttribute("startnum",startnum);
		request.setAttribute("page",1);
		request.setAttribute("shownum",shownum);
		request.setAttribute("result",result);
		request.getRequestDispatcher("/WEB-INF/jsp/province.jsp").forward(request,response);
	}*/
	
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String area(HttpServletResponse response,HttpServletRequest request,@Param("universityname") String universityname,@Param("province") String province) {
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
	 
	/*@RequestMapping(value="/add",method=RequestMethod.GET)
	public void add() {
		Area area = new Area();
		area.setUniversityname("清华1大学");
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
		
	}*/
	
}
