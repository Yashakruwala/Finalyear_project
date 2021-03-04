package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.DAO.AreaDAO;
import com.project.model.AreaVo;

@Service

public class AreaServiceImpl implements AreaService{
	
	@Autowired
	AreaDAO areaDAO;
	
	@Transactional
	public void saveArea(AreaVo areaVo)
	{
		areaDAO.saveArea(areaVo);
	}
	
	@Transactional
	public List viewArea()
	{
		List ls = areaDAO.viewArea();
		return ls;
		
	}

}
