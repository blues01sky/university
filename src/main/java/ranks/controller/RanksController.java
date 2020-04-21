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
	
	@RequestMapping(value = "/search",method = RequestMethod.POST)
	private String Search(HttpServletRequest request) {
		String name = request.getParameter("schoolname");
		List<Ranks> OnlyBrand = ranksServices.findOnlyBrand();
		List<Worldranks> OnlyworldBrand = worldranksServices.findOnlyBrand();
		int  i = 1;
		for(Ranks brand : OnlyBrand) {
			List<Ranks> ranks = ranksServices.findByNamesameBrand(brand.getBrand(), name);
			request.setAttribute("ranks"+i, ranks);
			i++;
		}
		request.setAttribute("OnlyBrand", OnlyBrand);
		request.setAttribute("OnlyworldBrand",OnlyworldBrand);
		return "searchresult";
	}
	
	@RequestMapping(value="/brands",method = RequestMethod.GET)
	public String brands(HttpServletRequest request,@Param("brand") String brand) {
		List<Ranks> OnlyBrand = ranksServices.findOnlyBrand();
		List<Worldranks> OnlyworldBrand = worldranksServices.findOnlyBrand();
		List<Ranks> rankslimit = ranksServices.findByBrandlimitscoredesc(brand,0, 30);
		request.setAttribute("rankslimit", rankslimit);
		request.setAttribute("OnlyBrand", OnlyBrand);
		request.setAttribute("OnlyworldBrand",OnlyworldBrand);
		return "rank";
	}
	
	@RequestMapping(value="/brand",method = RequestMethod.GET)
	public String worldranks(HttpServletRequest request,@Param("brand") String brand) {
		List<Ranks> OnlyBrand = ranksServices.findOnlyBrand();
		List<Worldranks> OnlyworldBrand = worldranksServices.findOnlyBrand();
		List<Ranks> ranks = ranksServices.findByBrand(brand);
		request.setAttribute("ranks", ranks);
		request.setAttribute("OnlyBrand", OnlyBrand);
		request.setAttribute("OnlyworldBrand",OnlyworldBrand);
		if (brand.equals("NetBig")) {
			return "netrank";
		}
		return "allrank";
	}
	
	@RequestMapping(value="/samebrand",method = RequestMethod.GET)
	public String samebrand(HttpServletRequest request,@Param("name") String name,@Param("brand") String brand) {
		List<Ranks> OnlyBrand = ranksServices.findOnlyBrand();
		List<Worldranks> OnlyworldBrand = worldranksServices.findOnlyBrand();
		List<Ranks> findByNamesameBrand = ranksServices.findByNamesameBrand(brand, name);
		request.setAttribute("findByNamesameBrand", findByNamesameBrand);
		request.setAttribute("OnlyBrand", OnlyBrand);
		request.setAttribute("OnlyworldBrand",OnlyworldBrand);
		if(brand.equals("xyh")) {
			return "xiaoyouhui";
		}else if (brand.equals("NetBig")) {
			return "NetBig";
		}
		return "samebrand";
	}
	
}
