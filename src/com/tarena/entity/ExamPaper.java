package com.tarena.entity;

import java.io.Serializable;
import java.util.Set;

public class ExamPaper implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -466414568108879085L;
	private Integer epid;
	private String name;
	private String totalTime;
	
	private Set<Question> questions;
	public Integer getEpid() {
		return epid;
	}
	public void setEpid(Integer epid) {
		this.epid = epid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTotalTime() {
		return totalTime;
	}
	public void setTotalTime(String totalTime) {
		this.totalTime = totalTime;
	}
	public Set<Question> getQuestions() {
		return questions;
	}
	public void setQuestions(Set<Question> questions) {
		this.questions = questions;
	}
	
}
