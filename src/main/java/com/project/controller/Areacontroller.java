package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.AreaVo;
import com.project.model.CityVo;
import com.project.service.AreaService;
import com.project.service.CityService;



@Controller
public class Areacontroller {
	
	@Autowired
	AreaService areaService;
	
	@Autowired
	CityService cityService;

	@GetMapping("/addarea")
	public ModelAndView adminaddArea()
	{
		List ls = cityService.viewCity();
		return new ModelAndView("admin/addArea","areaVo",new AreaVo()).addObject("ls",ls);
	}
	
	@GetMapping("/viewarea")
	public ModelAndView adminviewArea()
	{
		List ls = areaService.viewArea();
		return new ModelAndView("admin/viewArea","ls",ls);
	}
	
	@RequestMapping(value="/savearea", method=RequestMethod.POST)
	public ModelAndView saveArea(@ModelAttribute AreaVo areaVo)
	{
		areaVo.setStatus(true);
		CityVo cityVo = areaVo.getCityVo();
		areaVo.setCityVo(cityVo);
		areaService.saveArea(areaVo);
		List ls = areaService.viewArea();
		return new ModelAndView("admin/viewArea","ls",ls);
		
	}
	
	
	
	
}
