package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.DAO.DeviceDAO;
import com.project.model.DeviceVo;

@Service
public class DeviceServiceImpl implements DeviceService{
	
	@Autowired
	private DeviceDAO deviceDAO;
	
	@Transactional
	public void saveDevice(DeviceVo deviceVo)
	{
		deviceDAO.saveDevice(deviceVo);
	}
	
	@Transactional
	public List deviceSearch(DeviceVo deviceVo)
	{
		List ls = deviceDAO.deviceSearch(deviceVo);
		return ls;
	}

}
