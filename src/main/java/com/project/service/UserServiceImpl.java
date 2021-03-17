package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.DAO.UserDAO;
import com.project.model.LoginVO;
import com.project.model.UserVo;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDAO userDAO;
	
	@Transactional
	public void saveUser(UserVo userVo)
	{
		userDAO.saveUser(userVo);
	}
	
	@Transactional
	public List viewUser()
	{
		List ls = userDAO.viewUser();
		return ls;
	}
	@Transactional
	public void saveUserforLogin(LoginVO loginVO)
	{
		userDAO.saveUserforLogin(loginVO);
	}
	
	@Transactional
	public List editUser(UserVo userVo)
	{
		List ls = userDAO.editUser(userVo);
		return ls;
	}
}
