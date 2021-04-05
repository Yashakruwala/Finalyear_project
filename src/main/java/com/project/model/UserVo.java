package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.transaction.Transactional;
import javax.validation.constraints.Size;

@Entity
@Table(name = "user_table")
public class UserVo {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "username")
	private String userName;

	@Column(name = "phone_number")
	private String phoneNumber;

	@Column(name = "meterNumber")
	private String meterNumber;

	@Column(name = "password")
	private String password;

	@Column(name = "address")
	@Size(max = 500)
	private String address;

	@Column(name = "filename")
	private String fileName;

	@Column(name = "filepath")
	private String filePath;

	@ManyToOne
	AreaVo areaVo;

	@ManyToOne
	CityVo cityVo;

	@ManyToOne
	LoginVO loginVO;

	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public AreaVo getAreaVo() {
		return areaVo;
	}

	public void setAreaVo(AreaVo areaVo) {
		this.areaVo = areaVo;
	}

	public CityVo getCityVo() {
		return cityVo;
	}

	public void setCityVo(CityVo cityVo) {
		this.cityVo = cityVo;
	}

	public String getMeterNumber() {
		return meterNumber;
	}

	public void setMeterNumber(String meterNumber) {
		this.meterNumber = meterNumber;
	}

}
