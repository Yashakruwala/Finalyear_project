package com.project.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.DeviceVo;

@Repository
public class DeviceDAOImpl implements DeviceDAO {

	@Autowired
	private SessionFactory sessionfactory;
	
	public void saveDevice(DeviceVo deviceVo)
	{
		Session session = this.sessionfactory.getCurrentSession();
		
		session.saveOrUpdate(deviceVo);
	}
	
	
	
	
}
