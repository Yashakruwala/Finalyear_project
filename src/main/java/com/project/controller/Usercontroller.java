package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Usercontroller {

	@GetMapping("/adduser")
	public ModelAndView adminaddUser()
	{
		return new ModelAndView("admin/addUser");
	}
	
	@GetMapping("/viewuser")
	public ModelAndView adminviewUser()
	{
		return new ModelAndView("admin/viewUser");
	}
}
