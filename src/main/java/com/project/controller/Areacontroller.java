package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.AreaVo;
import com.project.model.CityVo;
import com.project.service.AreaService;
import com.project.service.CityService;

@Controller
public class Areacontroller {

	@Autowired
	private AreaService areaService;

	@Autowired
	private CityService cityService;

	@GetMapping("admin/addarea")
	public ModelAndView adminaddArea() {
		List ls = cityService.viewCity();
		return new ModelAndView("admin/addArea", "areaVo", new AreaVo()).addObject("ls", ls);
	}

	@GetMapping("admin/viewarea")
	public ModelAndView adminviewArea() {
		List ls = areaService.viewArea();
		return new ModelAndView("admin/viewArea", "ls", ls);
	}

	@RequestMapping(value = "admin/savearea", method = RequestMethod.POST)
	public ModelAndView adminsaveArea(@ModelAttribute AreaVo areaVo) {
		areaVo.setStatus(true);
		CityVo cityVo = areaVo.getCityVo();
		areaVo.setCityVo(cityVo);
		areaService.saveArea(areaVo);
		List ls = areaService.viewArea();
		return new ModelAndView("admin/viewArea", "ls", ls);

	}

	@RequestMapping(value = "admin/editarea", method = RequestMethod.GET)
	public ModelAndView admineditArea(@ModelAttribute AreaVo areaVo, @RequestParam int id) {
		areaVo.setId(id);
		areaVo = (AreaVo) areaService.editArea(areaVo).get(0);
		List ls = cityService.viewCity();
		return new ModelAndView("admin/addArea", "areaVo", areaVo).addObject("ls", ls);
	}

	@RequestMapping(value = "admin/deletearea", method = RequestMethod.GET)
	public ModelAndView admindeleteArea(@ModelAttribute AreaVo areaVo, @RequestParam int id) {
		areaVo.setId(id);
		areaVo = (AreaVo) areaService.editArea(areaVo).get(0);
		areaVo.setStatus(false);
		areaService.saveArea(areaVo);
		return new ModelAndView("redirect:viewarea");
	}

}
