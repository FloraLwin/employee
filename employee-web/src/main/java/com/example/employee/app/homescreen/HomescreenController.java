package com.example.employee.app.homescreen;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomescreenController {
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "emphome", method = { RequestMethod.GET, RequestMethod.POST })
	public String home() {

		return "homescreen/emphome";
	}

}
