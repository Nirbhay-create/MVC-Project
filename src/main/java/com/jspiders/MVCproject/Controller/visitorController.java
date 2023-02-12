package com.jspiders.MVCproject.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jspiders.MVCproject.Pojo.visitorPOJO;
import com.jspiders.MVCproject.Service.visitorService;

@Controller
public class visitorController {
	@Autowired
    private visitorService service; 
	
	@GetMapping("/homepage")
	private String Login() {
		return "homepage";
	}
	
	@GetMapping("/loginpage")
	public String logout() {
		return "loginpage";
	}
	
	@GetMapping("/service")
	public String service() {
		return "service";
	}
	
	@GetMapping("/support")
	public String support() {
		return "support";
	}
	
	@GetMapping("/aboutus")
	public String aboutus() {
		return "aboutus";
	}
	
	@PostMapping("/login")
	public String logindata(@RequestParam String name,@RequestParam String password,@RequestParam String email,ModelMap map) 
	{
		if(name=="") {
			visitorPOJO pojo=service.logindata(password,email);
			if(pojo!=null) {
				return "homepage";
				}
				map.addAttribute("msg", "invalid username or passowrd");
				return "loginpage";
		}
		else {
		visitorPOJO pojo=service.logindata(name,password,email);
		if(pojo!=null)
		{
		return "homepage";
		}
		map.addAttribute("msg", "Student not added");
		return "loginpage";
	}}
	
	
	
}
