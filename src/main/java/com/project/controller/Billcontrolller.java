package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.LoginVO;
import com.project.model.UserVo;
import com.project.service.LoginSerivce;
import com.project.service.UserService;
import com.project.utils.Basemethods;

@Controller
public class Billcontrolller {

	@Autowired
	private LoginSerivce loginService;

	@Autowired
	private UserService userService;

	@GetMapping("user/managebill")
	public ModelAndView openbill() {

		String userName = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(userName);

		List<?> ls = this.loginService.searchLoginID(loginVO);
		LoginVO loginVO1 = (LoginVO) ls.get(0);

		List<UserVo> userList = this.userService.getUserByLogin(loginVO1.getLoginId());

		UserVo userVo = userList.get(0);

		String meterNumber = userVo.getMeterNumber();

		this.userService.getBillByMeterNumber(meterNumber);
		
		return new ModelAndView("user/managebill");
	}

}
