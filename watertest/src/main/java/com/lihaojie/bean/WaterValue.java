package com.lihaojie.bean;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.validation.constraints.NotNull;

public class WaterValue implements Serializable {

	private static final long serialVersionUID = -4312603417509542093L;
	private Integer collectnum;
	@NotNull
	private String tempvalue;
	@NotNull
	private String humivalue;
	private Timestamp valuetime;

	public Integer getCollectnum() {
		return collectnum;
	}

	public void setCollectnum(Integer collectnum) {
		this.collectnum = collectnum;
	}

	

	public String getTempvalue() {
		return tempvalue;
	}

	public void setTempvalue(String tempvalue) {
		this.tempvalue = tempvalue;
	}

	public String getHumivalue() {
		return humivalue;
	}

	public void setHumivalue(String humivalue) {
		this.humivalue = humivalue;
	}

	public Timestamp getValuetime() {
		return valuetime;
	}

	public void setValuetime(Timestamp valuetime) {
		this.valuetime = valuetime;
	}

	@Override
	public String toString() {
		return "WaterValue [collectnum=" + collectnum + ", tempvalue=" + tempvalue + ", humivalue=" + humivalue
				+ ", valuetime=" + valuetime + "]";
	}

}
