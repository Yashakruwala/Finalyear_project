package com.project.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "bill_table")
public class BillVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)

	private int id;

	private String meterNumber;

	private String units;

	private String dateOfUsage;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMeterNumber() {
		return meterNumber;
	}

	public void setMeterNumber(String meterNumber) {
		this.meterNumber = meterNumber;
	}

	public String getUnits() {
		return units;
	}

	public void setUnits(String units) {
		this.units = units;
	}

	public String getDateOfUsage() {
		return dateOfUsage;
	}

	public void setDateOfUsage(String dateOfUsage) {
		this.dateOfUsage = dateOfUsage;
	}

}
