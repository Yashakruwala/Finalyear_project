package com.project.service;

import java.util.List;

import com.project.model.UserVo;

public interface UserService {

	public void saveUser(UserVo userVo);
	
	public List viewUser();
}
