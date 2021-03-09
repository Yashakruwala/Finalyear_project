package com.project.service;

import java.util.List;

import com.project.model.AreaVo;

public interface AreaService {

	public void saveArea(AreaVo areaVo);
	
	public List viewArea();
	
	public List editArea(AreaVo areaVo);
	
	
}
