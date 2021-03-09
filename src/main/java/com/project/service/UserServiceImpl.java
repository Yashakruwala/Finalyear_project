package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.DAO.UserDAO;
import com.project.model.UserVo;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDAO userDAO;
	
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
}
