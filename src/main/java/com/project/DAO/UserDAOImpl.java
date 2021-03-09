package com.project.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.UserVo;

@Repository
public class UserDAOImpl implements UserDAO{

	@Autowired
	private SessionFactory sessionfactory;
	
	public void saveUser(UserVo userVo)
	{
		Session session = this.sessionfactory .getCurrentSession();
		
		session.saveOrUpdate(userVo);
	}
	
	public List viewUser()
	{
		Session session = this.sessionfactory .getCurrentSession();
		
		Query q = session.createQuery("from UserVo where status = true ");
		
		List ls = q.list();
		
		return ls;
		
	}
}
