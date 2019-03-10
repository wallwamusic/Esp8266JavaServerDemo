package com.lihaojie.bean;

import java.io.Serializable;
import java.sql.Timestamp;

public class WaterValue implements Serializable {

	private static final long serialVersionUID = -4312603417509542093L;
	private Integer collectnum;
	private Integer tempvalue;
	private Integer humivalue;
	private Timestamp valuetime;

	public Integer getCollectnum() {
		return collectnum;
	}

	public void setCollectnum(Integer collectnum) {
		this.collectnum = collectnum;
	}

	public Integer getTempvalue() {
		return tempvalue;
	}

	public void setTempvalue(Integer tempvalue) {
		this.tempvalue = tempvalue;
	}

	public Integer getHumivalue() {
		return humivalue;
	}

	public void setHumivalue(Integer humivalue) {
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
