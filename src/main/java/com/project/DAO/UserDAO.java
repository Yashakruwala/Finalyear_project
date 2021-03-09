package com.project.DAO;

import java.util.List;

import com.project.model.UserVo;

public interface UserDAO {

	public void saveUser(UserVo userVo);
	
	public List viewUser();
}
