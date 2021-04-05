package com.project.service;

import java.util.List;

import com.project.model.LoginVO;
import com.project.model.UserVo;

public interface UserService {

	public void saveUser(UserVo userVo);

	public List viewUser();

	public void saveUserforLogin(LoginVO loginVO);

	public List editUser(UserVo userVo);

	List getUserByLogin(int loginId);

	List getBillByMeterNumber(String meterNumber);
}
