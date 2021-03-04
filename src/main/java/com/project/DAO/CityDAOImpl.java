package com.project.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.CityVo;

@Repository
public class CityDAOImpl implements CityDAO{
	
	@Autowired
	private SessionFactory sessionfactory;
	
	public void saveCity(CityVo cityVo)
	{
		Session session=this.sessionfactory.getCurrentSession();
		session.saveOrUpdate(cityVo);
	}
	
	public List viewCity()
	{
		Session session = this.sessionfactory.getCurrentSession();
		
		Query q = session.createQuery("from CityVo where status = true");
		
		List ls = q.list();
		
		return ls;
	}
	
	public List editCity(CityVo cityVo)
	{
		Session session = this.sessionfactory.getCurrentSession();
		
		Query q = session.createQuery("from CityVo where id="+cityVo.getId());
		
		List ls = q.list();
		
		return ls;
	}

}
