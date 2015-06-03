package com.tarena.entity;

import java.io.Serializable;

public class ExamRecord implements Serializable {
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4908694841631123720L;
	
	private Integer erid;
	private Integer examPaperId;
	private Integer score;
	private Integer studentId;
	public Integer getErid() {
		return erid;
	}
	public void setErid(Integer erid) {
		this.erid = erid;
	}
	public Integer getExamPaperId() {
		return examPaperId;
	}
	public void setExamPaperId(Integer examPaperId) {
		this.examPaperId = examPaperId;
	}
	public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
	}
	public Integer getStudentId() {
		return studentId;
	}
	public void setStudentId(Integer studentId) {
		this.studentId = studentId;
	}
	

}
