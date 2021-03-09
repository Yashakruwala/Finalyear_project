package com.project.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.AreaVo;

@Repository
public class AreaDAOImpl implements AreaDAO{

	@Autowired
	private SessionFactory sessionfactory;
	
	public void saveArea(AreaVo areaVo)
	{
		Session session = this.sessionfactory.getCurrentSession();
		
		session.saveOrUpdate(areaVo);
	}
	
	public List viewArea()
	{
		Session session = this.sessionfactory.getCurrentSession();
		
		Query q= session.createQuery("from AreaVo where status = true");
		
		List ls = q.list();
		
		return ls;
	}
	
	public List editArea(AreaVo areaVo)
	{
		Session session = this.sessionfactory.getCurrentSession();
		
		Query q = session.createQuery("from AreaVo where id="+areaVo.getId());
		
		List ls = q.list();
		
		return ls;
	}
}
