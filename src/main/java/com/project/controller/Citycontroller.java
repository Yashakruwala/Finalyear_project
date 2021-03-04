package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.CityVo;
import com.project.service.CityService;



@Controller
public class Citycontroller {

	@Autowired
	CityService cityService;
	
	@RequestMapping(value="/addcity")
	public ModelAndView adminaddCity()
	{
		return new ModelAndView("admin/addCity","cityVo",new CityVo());
	}
	
	@GetMapping("/viewcity")
	public ModelAndView adminviewCity()
	{
		List ls = cityService.viewCity();
		return new ModelAndView("admin/viewCity","ls",ls);
	}
	
	@RequestMapping(value="/saveCity", method=RequestMethod.POST)
	public ModelAndView saveCity(@ModelAttribute CityVo cityVo)
	{
		cityVo.setStatus(true);
		cityService.saveCity(cityVo);
		List ls=cityService.viewCity();
		return new ModelAndView("admin/viewCity","ls",ls);
	}
	
	@RequestMapping(value="/editCity", method=RequestMethod.GET)
	public ModelAndView editCity(@ModelAttribute CityVo cityVo,@RequestParam int id)
	{
		cityVo.setId(id);
		cityVo= (CityVo)cityService.editCity(cityVo).get(0);
		return new ModelAndView("admin/addCity","cityVo",cityVo);
	}
	
	@RequestMapping(value="/deletecity", method=RequestMethod.GET)
	public ModelAndView deleteCity(@ModelAttribute CityVo cityVo,@RequestParam int id)
	{
		cityVo.setId(id);
		cityVo=(CityVo)cityService.editCity(cityVo).get(0);
		cityVo.setStatus(false);
		cityService.saveCity(cityVo);
		return new ModelAndView("admin/viewCity");
	}
	
	
	
}
