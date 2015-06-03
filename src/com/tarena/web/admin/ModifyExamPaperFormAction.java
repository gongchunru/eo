package com.tarena.web.admin;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.ExamPaperDao;
import com.tarena.entity.ExamPaper;

@Controller
@Scope("prototype")
public class ModifyExamPaperFormAction {

	@Resource
	private ExamPaperDao examPaperDao;
	private ExamPaper examPaper; 
	private int epid;
	public String execute(){
		examPaper = examPaperDao.findById(epid);
		return "success";
	}
	public ExamPaper getExamPaper() {
		return examPaper;
	}
	public void setExamPaper(ExamPaper examPaper) {
		this.examPaper = examPaper;
	}
	public int getEpid() {
		return epid;
	}
	public void setEpid(int epid) {
		this.epid = epid;
	}
	
}
