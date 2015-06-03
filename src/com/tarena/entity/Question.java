package com.tarena.entity;

import java.io.Serializable;

public class Question implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1979293191375218394L;
	
	private Integer qid;
	private String content;
	private String answer;
	private String type;
	private Integer examPaperId;
	
	public Integer getQid() {
		return qid;
	}
	public void setQid(Integer qid) {
		this.qid = qid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Integer getExamPaperId() {
		return examPaperId;
	}
	public void setExamPaperId(Integer examPaperId) {
		this.examPaperId = examPaperId;
	}
	
}
