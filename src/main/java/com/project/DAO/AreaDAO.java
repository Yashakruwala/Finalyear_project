package com.project.DAO;

import java.util.List;

import com.project.model.AreaVo;

public interface AreaDAO {

	public void saveArea(AreaVo areaVo);
	
	public List viewArea();
	
	public List editArea(AreaVo areaVo);
}
