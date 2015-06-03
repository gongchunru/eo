package com.tarena.web.admin;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
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
public class ModifyOptionAction {
	
	@Resource
	private OptionDao optionDao;
	@Resource
	private QuestionDao questionDao;
	
	private String info = "success";
	private String optionA;
	private String optionB;
	private String optionC;
	private String optionD;
	private String answer;
	public String execute(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		Question question = (Question) session.getAttribute("question");
		Option option = (Option) session.getAttribute("option");
		option.setOptionA(optionA);
		option.setOptionB(optionB);
		option.setOptionC(optionC);
		option.setOptionD(optionD);
		optionDao.update(option);
		question.setAnswer(answer);
		questionDao.update(question);
		request.setAttribute("info", info);
		return "success";
	}
	public String getOptionA() {
		return optionA;
	}
	public void setOptionA(String optionA) {
		this.optionA = optionA;
	}
	public String getOptionB() {
		return optionB;
	}
	public void setOptionB(String optionB) {
		this.optionB = optionB;
	}
	public String getOptionC() {
		return optionC;
	}
	public void setOptionC(String optionC) {
		this.optionC = optionC;
	}
	public String getOptionD() {
		return optionD;
	}
	public void setOptionD(String optionD) {
		this.optionD = optionD;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
}
