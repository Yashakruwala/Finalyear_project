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
	CityService cityService;
	
	@Autowired
	AreaService areaService;
	
	@Autowired
	UserService userService;
	
	
	@GetMapping("/adduser")
	public ModelAndView adminaddUser()
	{
		List ls = cityService.viewCity();
		
		List ls1 = areaService.viewArea();
		
		return new ModelAndView("admin/addUser","userVo",new UserVo()).addObject("ls", ls).addObject("ls1",ls1);
	}
	
	@GetMapping("/viewuser")
	public ModelAndView adminviewUser()
	{
		List ls = userService.viewUser(); 
		return new ModelAndView("admin/viewUser","ls",ls);
	}
	
	@RequestMapping(value="/saveuser", method=RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute UserVo userVo, @RequestParam("file") MultipartFile file,HttpServletRequest request)
	{
		String fileName=file.getOriginalFilename();
		String str=request.getSession().getServletContext().getRealPath("/");
		String filePath=str+"Document\\IdentityProof\\";
		
       try{
			
			byte br[]=file.getBytes();
			BufferedOutputStream bout=new BufferedOutputStream(new FileOutputStream(filePath + "\\" +fileName));
			bout.write(br);
			bout.flush();
			bout.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
       
        userVo.setUserFilename(fileName);
		
        userVo.setUserFilePath(filePath);
        
		userVo.setStatus(true);
		
		CityVo cityVo = userVo.getCityVo();
		AreaVo areaVo = userVo.getAreaVo();
		
		userVo.setCityVo(cityVo);
		userVo.setAreaVo(areaVo);
		userService.saveUser(userVo);
		List ls = userService.viewUser();
		return new ModelAndView("admin/viewUser","ls",ls);
		
	}
}
