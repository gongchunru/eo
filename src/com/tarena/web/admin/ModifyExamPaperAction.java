package com.tarena.web.admin;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.ExamPaperDao;
import com.tarena.entity.ExamPaper;

@Controller
@Scope("prototype")
public class ModifyExamPaperAction {

	@Resource
	private ExamPaperDao examPaperDao;
	private ExamPaper examPaper;
	public String execute(){
		examPaperDao.update(examPaper);
		return "success";
	}
	public ExamPaper getExamPaper() {
		return examPaper;
	}
	public void setExamPaper(ExamPaper examPaper) {
		this.examPaper = examPaper;
	}
	
}
