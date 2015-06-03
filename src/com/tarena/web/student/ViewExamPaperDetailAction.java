package com.tarena.web.student;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.ExamPaperDao;
import com.tarena.dao.OptionDao;
import com.tarena.dao.QuestionDao;
import com.tarena.entity.ExamPaper;
import com.tarena.entity.Option;
import com.tarena.entity.Question;

@Controller
@Scope("prototype")
public class ViewExamPaperDetailAction {

	@Resource
	private ExamPaperDao examPaperDao;
	@Resource
	private OptionDao optionDao;
	@Resource
	private QuestionDao questionDao;

	private int epid;
	private ExamPaper examPaper;
	private List<Question> list;
	private List<Option> options;
	private int questionId;
	private Option option;

	public String execute() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		examPaper = examPaperDao.findById(epid);
		session.setAttribute("examPaper", examPaper);
		list = questionDao.findByExamPaperId(epid);
		options = new ArrayList<Option>();
		for (Question q : list) {
			questionId = q.getQid();
			// Option option = optionDao.findByQuestionId(questionId);
			// options.add(option);
			System.out.println(questionId);
			option = optionDao.findByQuestionId(questionId);
			options.add(option);
		}
		return "success";
	}

	public int getEpid() {
		return epid;
	}

	public void setEpid(int epid) {
		this.epid = epid;
	}

	public ExamPaper getExamPaper() {
		return examPaper;
	}

	public void setExamPaper(ExamPaper examPaper) {
		this.examPaper = examPaper;
	}

	public List<Question> getList() {
		return list;
	}

	public void setList(List<Question> list) {
		this.list = list;
	}

	public List<Option> getOptions() {
		return options;
	}

	public void setOptions(List<Option> options) {
		this.options = options;
	}

	public int getQuestionId() {
		return questionId;
	}

	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}

	public Option getOption() {
		return option;
	}

	public void setOption(Option option) {
		this.option = option;
	}
	
}
