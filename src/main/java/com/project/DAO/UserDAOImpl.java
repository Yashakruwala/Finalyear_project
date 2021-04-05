package com.project.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.project.model.LoginVO;
import com.project.model.UserVo;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionfactory;

	public void saveUser(UserVo userVo) {
		Session session = this.sessionfactory.getCurrentSession();

		session.saveOrUpdate(userVo);
	}

	public List viewUser() {
		Session session = this.sessionfactory.getCurrentSession();

		Query q = session.createQuery("from UserVo");

		List ls = q.list();

		return ls;

	}

	public void saveUserforLogin(LoginVO loginVO) {
		Session session = this.sessionfactory.getCurrentSession();

		session.saveOrUpdate(loginVO);
	}

	public List editUser(UserVo userVo) {
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from UserVo where id=" + userVo.getId());
		List ls = q.list();
		return ls;
	}

	public List getUserByLogin(int loginId) {
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createQuery("from UserVo where loginVO=" + loginId);
		List ls = q.list();
		return ls;
	}

	public List getBillByMeterNumber(String meterNumber) {
		Session session = this.sessionfactory.getCurrentSession();
		Query q = session.createSQLQuery("SELECT SUM(units),dateOfUsage FROM bill_table WHERE meterNumber = '"
				+ meterNumber + "' GROUP BY MONTH(dateOfUsage)");
		List ls = q.list();

		System.out.println(ls.size());
		
		return ls;
	}

}
