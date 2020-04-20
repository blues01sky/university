package ranks.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ranks.entity.Ranks;
import ranks.services.RanksServices;
import worldranks.entity.Worldranks;
import worldranks.services.WorldranksServices;

@Controller
@RequestMapping("/ranks")
public class RanksController {
	@Autowired
	private RanksServices ranksServices;
	@Autowired
	private WorldranksServices worldranksServices;
	
	@RequestMapping(value="/brand",method = RequestMethod.GET)
	public String worldranks(HttpServletRequest request,@Param("brand") String brand) {
		return "/index";
	}
	
	@RequestMapping(value="/samebrand",method = RequestMethod.GET)
	public String samebrand(HttpServletRequest request,@Param("name") String name,@Param("brand") String brand) {
		name = request.getParameter("name");
		List<Ranks> OnlyBrand = ranksServices.findOnlyBrand();
		List<Worldranks> OnlyworldBrand = worldranksServices.findOnlyBrand();
		List<Ranks> findByNamesameBrand = ranksServices.findByNamesameBrand(brand, name);
		System.out.println(name);
		request.setAttribute("findByNamesameBrand", findByNamesameBrand);
		request.setAttribute("OnlyBrand", OnlyBrand);
		request.setAttribute("OnlyworldBrand",OnlyworldBrand);
		return "/samebrand";
	}
	
}
