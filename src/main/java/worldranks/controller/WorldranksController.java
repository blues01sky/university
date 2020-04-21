package worldranks.controller;

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
@RequestMapping("/worldranks")
public class WorldranksController {
	
	@Autowired
	private RanksServices ranksServices;
	@Autowired
	private WorldranksServices worldranksServices;
	
	
	@RequestMapping(value="/detail",method = RequestMethod.GET)
	public String ranks(HttpServletRequest request,@Param("brand") String brand,@Param("ranking") String ranking,@Param("nianfen") String nianfen) {
		List<Worldranks> findAUniversityname = worldranksServices.findAUniversityname(brand, Integer.valueOf(nianfen),  Integer.valueOf(ranking));
		List<Worldranks> universitynameAndBrand = worldranksServices.findByuniversitynameAndBrand(findAUniversityname.get(0).getUniversity_name(), brand);
		List<Ranks> OnlyBrand = ranksServices.findOnlyBrand();
		List<Worldranks> OnlyworldBrand = worldranksServices.findOnlyBrand();
		
		request.setAttribute("universitynameAndBrand", universitynameAndBrand);
		request.setAttribute("OnlyBrand", OnlyBrand);
		request.setAttribute("OnlyworldBrand",OnlyworldBrand);
		if (brand.equals("the")) {
			return "worldrank/thedetail";
		} else if (brand.equals("times")) {
			return "worldrank/timesdetail";
		} else if (brand.equals("arwu")) {
			return "worldrank/arwudetail";
		} else if (brand.equals("usnews")) {
			return "worldrank/usnewsdetail";
		} else if (brand.equals("guardian")) {
			return "worldrank/guardiandetail";
		}
		return "worldrank/qsdetail";
	}
	
	@RequestMapping(value="/brand",method = RequestMethod.GET)
	public String ranks(HttpServletRequest request,@Param("brand") String brand) {
		
		List<Worldranks> findByBrand = worldranksServices.findByBrandAndYear(brand, worldranksServices.findByBrand(brand).get(0).getYear());
		List<Ranks> OnlyBrand = ranksServices.findOnlyBrand();
		List<Worldranks> OnlyworldBrand = worldranksServices.findOnlyBrand();
		List<Worldranks> findYear = worldranksServices.findOnlyYear(brand);
		
		request.setAttribute("findYear", findYear);
		request.setAttribute("OnlyBrand", OnlyBrand);
		request.setAttribute("OnlyworldBrand",OnlyworldBrand);
		request.setAttribute("findByBrand",findByBrand);
		
		if (brand.equals("the")) {
			return "worldrank/the";
		} else if (brand.equals("times")) {
			return "worldrank/times";
		} else if (brand.equals("arwu")) {
			return "worldrank/arwu";
		} else if (brand.equals("usnews")) {
			return "worldrank/usnews";
		} else if (brand.equals("guardian")) {
			return "worldrank/guardian";
		}
		return "worldrank/qs";
	}
	
	@RequestMapping(value="/brand",method = RequestMethod.POST)
	public String rankspost(HttpServletRequest request) {
		String brand = request.getParameter("brand");
		int year = Integer.valueOf(request.getParameter("year"));
		List<Worldranks> findByBrand = worldranksServices.findByBrandAndYear(brand,year);
		List<Ranks> OnlyBrand = ranksServices.findOnlyBrand();
		List<Worldranks> OnlyworldBrand = worldranksServices.findOnlyBrand();
		List<Worldranks> findYear = worldranksServices.findOnlyYear(brand);
		request.setAttribute("findYear", findYear);
		request.setAttribute("OnlyBrand", OnlyBrand);
		request.setAttribute("OnlyworldBrand",OnlyworldBrand);
		request.setAttribute("findByBrand",findByBrand);
		
		if (brand.equals("the")) {
			return "worldrank/the";
		} else if (brand.equals("times")) {
			return "worldrank/times";
		} else if (brand.equals("arwu")) {
			return "worldrank/arwu";
		} else if (brand.equals("usnews")) {
			return "worldrank/usnews";
		} else if (brand.equals("guardian")) {
			return "worldrank/guardian";
		}
		return "worldrank/qs";
	}
	
}
