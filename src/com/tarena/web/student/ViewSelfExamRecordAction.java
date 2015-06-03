package com.tarena.web.student;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.ExamPaperDao;
import com.tarena.dao.ExamRecordDao;
import com.tarena.entity.ExamPaper;
import com.tarena.entity.ExamRecord;
import com.tarena.entity.Student;

@Controller
@Scope("prototype")
public class ViewSelfExamRecordAction {

	//忘记了@repository，导致一直实例化该action失败
	@Resource
	private ExamRecordDao examRecordDao;
	
	@Resource
	private ExamPaperDao examPaperDao;
	
	private String keyword;
	private List<ExamRecord> lists;
	private List<ExamPaper> exams;
	
	public String execute(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		Student student = (Student) session.getAttribute("student");
		System.out.println(student.getName());
		lists = examRecordDao.findByExamPaperName(keyword, student.getName());
		exams = examPaperDao.find();
		return "success";
	}

	public List<ExamRecord> getLists() {
		return lists;
	}

	public void setLists(List<ExamRecord> lists) {
		this.lists = lists;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public List<ExamPaper> getExams() {
		return exams;
	}

	public void setExams(List<ExamPaper> exams) {
		this.exams = exams;
	}

}
