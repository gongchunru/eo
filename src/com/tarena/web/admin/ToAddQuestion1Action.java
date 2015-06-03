package com.tarena.web.admin;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.ExamPaperDao;
import com.tarena.entity.ExamPaper;

@Controller
@Scope("prototype")
public class ToAddQuestion1Action {

	private Integer epid;
	
	@Resource
	private ExamPaperDao examPaperDao;
	
	public String execute(){
		ExamPaper examPaper = examPaperDao.findById(epid);
		HttpSession session = 
			ServletActionContext.getRequest().getSession();
		session.setAttribute("examPaper", examPaper);
		return "success";
	}

	public Integer getEpid() {
		return epid;
	}

	public void setEpid(Integer epid) {
		this.epid = epid;
	}
	 
}
