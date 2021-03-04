package com.project.service;

import java.util.List;

import com.project.model.CityVo;

public interface CityService {

	public void saveCity(CityVo cityVo);
	
	public List viewCity();
	
	public List editCity(CityVo cityVo);
}
