package com.project.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.project.model.ComplaintVo;

@Repository
public class ComplainsDAOImpl implements ComplainsDAO {

	private SessionFactory sessionFactory;
	
	public void saveComplain(ComplaintVo complaintVo)
	{
		System.out.println(complaintVo);
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(complaintVo);
	}
}
