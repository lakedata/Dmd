package ddwu.spring.Dmd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	// http://localhost:8080/index
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
		
		System.out.println("home controller start");
        return "/index";
    }
	
}
