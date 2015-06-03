package com.tarena.entity;

import java.io.Serializable;

public class Answer implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2899588064499431962L;
	private String single;
	private String single0;
	private String single1;
	private String multi;
	private String multi0;
	private String multi1;

	public Answer() {
	}
	public Answer(String single, String multi) {
		super();
		this.single = single;
		this.multi = multi;
	}
	public String getSingle() {
		return single;
	}
	public void setSingle(String single) {
		this.single = single;
	}
	public String getMulti() {
		return multi;
	}
	public void setMulti(String multi) {
		this.multi = multi;
	}
	public String getSingle0() {
		return single0;
	}
	public void setSingle0(String single0) {
		this.single0 = single0;
	}
	public String getSingle1() {
		return single1;
	}
	public void setSingle1(String single1) {
		this.single1 = single1;
	}
	public String getMulti0() {
		return multi0;
	}
	public void setMulti0(String multi0) {
		this.multi0 = multi0;
	}
	public String getMulti1() {
		return multi1;
	}
	public void setMulti1(String multi1) {
		this.multi1 = multi1;
	}
	
		
}
