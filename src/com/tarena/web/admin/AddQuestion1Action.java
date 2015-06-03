package com.tarena.web.admin;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.QuestionDao;
import com.tarena.entity.ExamPaper;
import com.tarena.entity.Question;

@Controller
@Scope("prototype")
public class AddQuestion1Action {
	
	@Resource
	private QuestionDao questionDao;
	
	private String content;
	private String type;
	private Integer epid;
	
	public String execute(){
		HttpSession session = 
			ServletActionContext.getRequest().getSession();
		ExamPaper examPaper = (ExamPaper) session.getAttribute("examPaper");
		Question question = new Question();
		if(content == null || content.equals("")
				|| type == null || type.equals("")
				|| examPaper == null ){
			return "fail";
		}
		question.setContent(content);
		question.setType(type);
		question.setExamPaperId(examPaper.getEpid());
		session.setAttribute("question", question);
		questionDao.save(question);
		return "success";
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	public Integer getEpid() {
		return epid;
	}

	public void setEpid(Integer epid) {
		this.epid = epid;
	}
	

}
