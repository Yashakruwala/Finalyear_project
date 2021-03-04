package com.project.DAO;

import java.util.List;

import com.project.model.CityVo;

public interface CityDAO {
	
	public void saveCity(CityVo cityVo);

	public List viewCity();
	
	public List editCity(CityVo cityVo);
}
