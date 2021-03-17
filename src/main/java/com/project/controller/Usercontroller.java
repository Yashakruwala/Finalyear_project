package com.project.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.persistence.ManyToOne;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.AreaVo;
import com.project.model.CityVo;
import com.project.model.LoginVO;
import com.project.model.UserVo;
import com.project.service.AreaService;
import com.project.service.CityService;
import com.project.service.UserService;

@Controller
public class Usercontroller {

	@Autowired
	private CityService cityService;

	@Autowired
	private AreaService areaService;

	@Autowired
	private UserService userService;

	@GetMapping("admin/adduser")
	public ModelAndView adminaddUser() {
		List ls = cityService.viewCity();

		List ls1 = areaService.viewArea();

		return new ModelAndView("admin/addUser", "userVo", new UserVo()).addObject("ls", ls).addObject("ls1", ls1);
	}

	@GetMapping("admin/viewuser")
	public ModelAndView adminviewUser() {
		List ls = userService.viewUser();
		return new ModelAndView("admin/viewUser", "ls", ls);
	}

	@RequestMapping(value = "admin/saveuser", method = RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute UserVo userVo, @RequestParam("file") MultipartFile file,
			HttpServletRequest request) {
		String fileName = file.getOriginalFilename();
		String str = request.getSession().getServletContext().getRealPath("/");
		String filePath = str + "Document\\IdentityProof\\";

		try {

			byte br[] = file.getBytes();
			BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(filePath + "\\" + fileName));
			bout.write(br);
			bout.flush();
			bout.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		userVo.setFileName(fileName);

		userVo.setFilePath(filePath);

		CityVo cityVo = userVo.getCityVo();
		AreaVo areaVo = userVo.getAreaVo();
		/*LoginVO loginVO = userVo.getLoginVO();*/
		LoginVO loginVo = new LoginVO();

		String username = userVo.getUserName();
		 System.out.println(username); 
		String password = userVo.getPassword();
		loginVo.setUsername(username);
		loginVo.setPassword(password);
		userVo.setLoginVO(loginVo);
		userVo.setCityVo(cityVo);
		userVo.setAreaVo(areaVo);

		userService.saveUserforLogin(loginVo);
		userService.saveUser(userVo);
		List ls = userService.viewUser();
		String uname=userVo.getUserName();
		System.out.println(uname);
		return new ModelAndView("admin/viewUser", "ls", ls);

	}
}
