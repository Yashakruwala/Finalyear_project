package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Feedbackcontroller {
	
	@GetMapping("user/feedback")
	public ModelAndView feedback()
	{
		return new ModelAndView("user/feedback");
	}

}
