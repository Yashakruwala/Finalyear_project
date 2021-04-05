package com.project.service;

import java.util.List;

import com.project.model.DeviceVo;

public interface DeviceService {
	
	public void saveDevice(DeviceVo deviceVo);
	
	public List deviceSearch(DeviceVo deviceVo);

}
