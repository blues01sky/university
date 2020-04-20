package worldranks.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/worldranks")
public class WorldranksController {
	
	@RequestMapping(value="/brand",method = RequestMethod.GET)
	public String ranks(HttpServletRequest request,@Param("brand") String brand) {
		return "/index";
	}
	
}
