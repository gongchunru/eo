package com.tarena.web.admin;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.ExamPaperDao;
import com.tarena.entity.ExamPaper;

@Controller
@Scope("prototype")
public class AddExamPaperAction {

	@Resource
	private ExamPaperDao examPaperDao;
	private String name;
	private String totalTime;
	public String execute(){
		if(name.equals("") ||
				totalTime.equals("")){
			return "fail";
		}
		ExamPaper examPaper = new ExamPaper();
		examPaper.setName(name);
		examPaper.setTotalTime(totalTime);
		examPaperDao.save(examPaper);
		return "success";
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
	
}
