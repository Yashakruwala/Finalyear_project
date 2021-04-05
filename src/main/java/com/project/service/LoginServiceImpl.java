package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.DAO.LoginDAO;
import com.project.model.LoginVO;

@Service
public class LoginServiceImpl implements LoginSerivce {

	@Autowired
	public LoginDAO loginDAO;
	
	@Transactional
	public List searchLoginID(LoginVO loginVo)
	{
	    List ls = loginDAO.searchLoginID(loginVo);
	    return ls;
	}
	
}
