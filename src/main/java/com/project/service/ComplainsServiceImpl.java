package com.project.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.DAO.ComplainsDAO;
import com.project.model.ComplaintVo;

@Service
@Transactional
public class ComplainsServiceImpl implements ComplainsService {

	@Autowired
	private ComplainsDAO complainsDAO;
	
	
	public void saveComplain(ComplaintVo complaintVo)
	{
		 complainsDAO.saveComplain(complaintVo);
	}
	
}
