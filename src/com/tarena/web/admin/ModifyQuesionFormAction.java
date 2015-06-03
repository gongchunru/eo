package com.tarena.web.admin;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.OptionDao;
import com.tarena.dao.QuestionDao;
import com.tarena.entity.Option;
import com.tarena.entity.Question;

@Controller
@Scope("prototype")
public class ModifyQuesionFormAction {
	@Resource
	private QuestionDao questionDao;
	
	@Resource
	private OptionDao optionDao;
	
	private Integer qid;
	
	private Question question;
	private Option option;
	public String execute(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		question = questionDao.findById(qid);
		option = optionDao.findByQuestionId(qid);
		session.setAttribute("question", question);
		session.setAttribute("option", option);
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
	public Option getOption() {
		return option;
	}
	public void setOption(Option option) {
		this.option = option;
	}
	
}
