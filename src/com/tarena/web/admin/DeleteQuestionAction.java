package com.tarena.web.admin;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.OptionDao;
import com.tarena.dao.QuestionDao;
import com.tarena.entity.Option;
import com.tarena.entity.Question;

@Controller
@Scope("prototype")
public class DeleteQuestionAction {

	@Resource
	private QuestionDao questionDao;
	
	@Resource
	private OptionDao optionDao;
	
	String info = "success";
	private Integer qid;
	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		questionDao.delete(qid);
		Question question = questionDao.findById(qid);
		Option option = optionDao.findByQuestionId(qid);
		System.out.println(option.getOid()+" " + option.getOptionA());
		optionDao.delete(option.getOid());
		request.setAttribute("info", info);
		request.setAttribute("question", question);
		return "success";
	}
	public Integer getQid() {
		return qid;
	}
	public void setQid(Integer qid) {
		this.qid = qid;
	}
	
}
