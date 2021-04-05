package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="complaint_table")
public class ComplaintVo {
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="complaint_subject")
	private String complaintSubject;
	
	@Column(name="complaint_description")
	private String complaintDescription;
	
	@Column(name="complaint_datetime")
	private String complaintDatetime;
	
	@Column(name="complaint_status")
	private String complaintStatus="pending";
	
	@Column(name="complaint_reply")
	private String complaintReply;
	
	@Column(name="reply_datetime")
	private String replyDatetime;
	
	@Column(name="status")
	private boolean status=true;
	
	@ManyToOne
	private LoginVO loginVo;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	

	public String getComplaintSubject() {
		return complaintSubject;
	}

	public void setComplaintSubject(String complaintSubject) {
		this.complaintSubject = complaintSubject;
	}

	public String getComplaintDescription() {
		return complaintDescription;
	}

	public void setComplaintDescription(String complaintDescription) {
		this.complaintDescription = complaintDescription;
	}

	public String getComplaintDatetime() {
		return complaintDatetime;
	}

	public void setComplaintDatetime(String complaintDatetime) {
		this.complaintDatetime = complaintDatetime;
	}

	public String getComplaintStatus() {
		return complaintStatus;
	}

	public void setComplaintStatus(String complaintStatus) {
		this.complaintStatus = complaintStatus;
	}

	public String getComplaintReply() {
		return complaintReply;
	}

	public void setComplaintReply(String complaintReply) {
		this.complaintReply = complaintReply;
	}

	public String getReplyDatetime() {
		return replyDatetime;
	}

	public void setReplyDatetime(String replyDatetime) {
		this.replyDatetime = replyDatetime;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public LoginVO getLoginVo() {
		return loginVo;
	}

	public void setLoginVo(LoginVO loginVo) {
		this.loginVo = loginVo;
	}
	

}
