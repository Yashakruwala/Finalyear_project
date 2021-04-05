package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.DeviceVo;
import com.project.model.UserVo;
import com.project.service.DeviceService;
import com.project.service.UserService;

@RestController
public class Devicecontroller {

	@Autowired
	private DeviceService deviceService;

	@Autowired
	private UserService userService;

	@RequestMapping(value = "admin/managedevice")
	public ModelAndView loadDevice(@RequestParam int id, @ModelAttribute UserVo userVo,DeviceVo deviceVo) {
		userVo.setId(id);
		userVo = (UserVo) userService.editUser(userVo).get(0);
		deviceVo.setUserVo(userVo);
		List ls = deviceService.deviceSearch(deviceVo);
		return new ModelAndView("admin/viewDevice", "deviceVo", new DeviceVo()).addObject("userVo", userVo).addObject("deviceList", ls);
	}

	@RequestMapping(value = "admin/addDevice", method = RequestMethod.POST)
	public ModelAndView saveDevice(@RequestParam int serviceNumber, @ModelAttribute DeviceVo deviceVo,
			@ModelAttribute UserVo userVo) {
		System.out.println(serviceNumber);
		userVo.setId(serviceNumber);
		deviceVo.setUserVo(userVo);
		deviceService.saveDevice(deviceVo);
		List ls = userService.viewUser();
		return new ModelAndView("admin/viewUser","ls",ls);
	}

	@RequestMapping(value = "admin/devicesearch", method = RequestMethod.GET)
	public ResponseEntity deviceSearch(@RequestParam int id,UserVo userVo,DeviceVo deviceVo) {
		userVo.setId(id);
		deviceVo.setUserVo(userVo);
		List ls = deviceService.deviceSearch(deviceVo);
		System.out.println(ls.size());
		return new ResponseEntity(ls,HttpStatus.OK);
	}

}
