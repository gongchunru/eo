package com.tarena.web.admin;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.QuestionDao;
import com.tarena.entity.Question;

@Controller
@Scope("prototype")
public class ModifyQuestionAction {

	@Resource
	private QuestionDao questionDao;
	
	private Question question;
	private Integer qid;
	private String content;
	private String type;
	public String execute(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		question = (Question) session.getAttribute("question");
		question.setContent(content);
		question.setType(type);
		questionDao.update(question);
		return "success";
	}
	public Integer getQid() {
		return qid;
	}
	public void setQid(Integer qid) {
		this.qid = qid;
	}
	public Question getQuestion() {
		return question;
	}
	public void setQuestion(Question question) {
		this.question = question;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}
