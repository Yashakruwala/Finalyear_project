package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.DeviceVo;
import com.project.model.UserVo;
import com.project.service.DeviceService;
import com.project.service.UserService;

@Controller
public class Devicecontroller {

	@Autowired
	private DeviceService deviceService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="admin/managedevice")
	public ModelAndView loadDevice(@RequestParam int id,@ModelAttribute UserVo userVo)
	{
		userVo.setId(id);
		userVo = (UserVo)userService.editUser(userVo).get(0);
	    	  
		return new ModelAndView("admin/manageDevice","deviceVo",new DeviceVo()).addObject("userVo", userVo);
	}
	
	@RequestMapping(value="admin/addDevice",method=RequestMethod.POST)
	public ModelAndView saveDevice(@RequestParam int serviceNumber,@ModelAttribute DeviceVo deviceVo,@ModelAttribute UserVo userVo)
	{
		System.out.println(serviceNumber);
	   userVo.setId(serviceNumber);
	   deviceVo.setUserVo(userVo);
	   deviceService.saveDevice(deviceVo);
	   
	  
	   return new ModelAndView("admin/viewUser"); 
	}
	
	
}
