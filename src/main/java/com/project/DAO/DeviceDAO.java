package com.project.DAO;

import java.util.List;

import com.project.model.DeviceVo;

public interface DeviceDAO {
	
	public void saveDevice(DeviceVo deviceVo);
	
	public List deviceSearch(DeviceVo deviceVo);

}
