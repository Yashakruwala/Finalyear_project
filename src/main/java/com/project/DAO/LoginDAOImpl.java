package com.project.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.LoginVO;

@Repository

public class LoginDAOImpl implements LoginDAO{

	@Autowired
	private SessionFactory sessionfactory;
	
	public List searchLoginID(LoginVO loginVo)
	{
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from LoginVO where username='"+loginVo.getUsername()+"'");
		List ls = q.list();
		return ls;
	}
	
	
}
