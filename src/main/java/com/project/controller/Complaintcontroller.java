package com.project.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.ComplaintVo;
import com.project.model.LoginVO;
import com.project.service.ComplainsService;
import com.project.service.LoginSerivce;
import com.project.utils.Basemethods;

@Controller
public class Complaintcontroller {
	
	@Autowired
	private LoginSerivce loginService;
	
	@Autowired
	private ComplainsService complainsService;

	@GetMapping("user/complaint")
	public ModelAndView complaint()
	{
		return new ModelAndView("user/complaint","complaintVo",new ComplaintVo());
	}
	
	/*@GetMapping(value = "branch/viewComplains")
	public ModelAndView viewComplains() {
		String userName = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUserName(userName);
		List<?> ls = this.loginService.searchLoginID(loginVO);
		LoginVO loginVO1 = (LoginVO) ls.get(0);
		ComplainVO complainVO = new ComplainVO();
		complainVO.setLoginVO(loginVO1);
		System.out.println(loginVO1.getId());
		List<?> complainList = this.complainsSevice.getComplains(complainVO);
		return new ModelAndView("branch/viewComplain", "complainList", complainList);
	}*/


	@PostMapping(value = "user/addcomplaint")
	public ModelAndView saveComplains(@ModelAttribute ComplaintVo complainVo) {
		
		System.out.println(complainVo);
		Date d = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("dd-M-yyyy hh:mm:ss");
		String strDate = formatter.format(d);
		complainVo.setComplaintDatetime(strDate);

		String userName = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(userName);
		List ls = this.loginService.searchLoginID(loginVO);
		LoginVO loginVO1 = ((LoginVO) ls.get(0));
		System.out.println("loginList : "+ls.size());
		complainVo.setLoginVo(loginVO1);

		complainsService.saveComplain(complainVo);
		return new ModelAndView("redirect:complaint");
	}

/*	@GetMapping(value = "branch/deleteComplains")
	public ModelAndView vendordeleteComplains(@ModelAttribute ComplainVO complainVO) {
		List<?> complainList = this.complainsSevice.complainGetById(complainVO);
		ComplainVO complainVO1 = (ComplainVO) complainList.get(0);
		complainVO1.setStatus(false);
		this.complainsSevice.saveComplain(complainVO1);

		return new ModelAndView("redirect:viewComplain");
	}

	@GetMapping(value = "admin/viewAllComplains")
	public ModelAndView viewAllComplains() {
		String userName = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUserName(userName);
		List<?> ls = this.loginService.searchLoginID(loginVO);
		LoginVO loginVO1 = (LoginVO) ls.get(0);
		ComplainVO complainVO = new ComplainVO();
		complainVO.setLoginVO(loginVO1);
		System.out.println(loginVO1.getId());
		List<?> complainList = this.complainsSevice.getComplainsByRole(complainVO);
		return new ModelAndView("admin/viewComplain", "complainList", complainList);
	}

	@GetMapping(value = "admin/replyComplains")
	public ModelAndView replyComplains(@RequestParam int id) {
		ComplainVO complainVO = new ComplainVO();
		complainVO.setId(id);
		List<?> ComplainList = this.complainsSevice.complainGetById(complainVO);
		return new ModelAndView("admin/replyComplain", "complainVO", (ComplainVO) ComplainList.get(0));
	}

	@PostMapping(value = "admin/saveComplainsReplay")
	public ModelAndView saveComplainsReplay(@ModelAttribute ComplainVO complainVO) {
		Date d = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("dd-M-yyyy hh:mm:ss");
		String strDate = formatter.format(d);
		complainVO.setReplayDateTime(strDate);
		complainVO.setComplainStatus("Resolved");

		this.complainsSevice.saveComplain(complainVO);
		return new ModelAndView("redirect:/admin/viewAllComplains");
	}

*/
	}
