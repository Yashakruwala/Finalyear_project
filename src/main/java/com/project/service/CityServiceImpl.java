package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.DAO.CityDAO;
import com.project.model.CityVo;

@Service
public class CityServiceImpl implements CityService {
	
	@Autowired
	private CityDAO cityDAO;

	@Transactional
	public void saveCity(CityVo cityVo)
	{
		cityDAO.saveCity(cityVo);
	}
	
	@Transactional
	public List viewCity()
	{
		List ls = cityDAO.viewCity();
		return ls;
	}
	
	@Transactional
	public List editCity(CityVo cityVo)
	{
		List ls = cityDAO.editCity(cityVo);
		return ls;
	}
}
