package com.tarena.web.student;


import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.QuestionDao;
import com.tarena.entity.Answer;
import com.tarena.entity.ExamPaper;
import com.tarena.entity.Question;

@Controller
@Scope("prototype")
public class ExamResultAction{

	@Resource
	private QuestionDao questionDao;
	
	private int totalQuestion;
	private int rightQuestion = 0;
	private int score = 0;
	
	private Answer answer;
	
	//拼接后的答案
	private String str = "";
	private List<Question> questions;
	public String execute(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		ExamPaper examPaper = (ExamPaper) session.getAttribute("examPaper");
		questions = questionDao.findByExamPaperId(examPaper.getEpid());
		totalQuestion = questions.size();
		
		System.out.println(answer.getMulti());
		String[] arr = answer.getMulti().split("-");
		
		
		
		Question question1 = questionDao.findById(Integer.parseInt(answer.getSingle0().split("-")[1]));
		Question question2 = questionDao.findById(Integer.parseInt(answer.getSingle1().split("-")[1]));
		Question question3 = questionDao.findById(Integer.parseInt(arr[arr.length-1]));
		System.out.println(answer.getMulti().split("-")[1]);
		System.out.println(question3.getAnswer());
		
		//将原数组的长度减1，去掉最后一个元素
		String[] arr2 = Arrays.copyOf(arr, arr.length -1);
		
		
		//将所得到的多选框的答案A-4,B-4    操作后是A,B
//		for(int i = 0 ; i< arr.length; i ++){
//			arr[i] = arr[i].replaceAll("\\d", "");
//			str += arr[i].trim();
//		}
		for(int i = 0 ; i< arr2.length; i ++){
			arr2[i] = arr2[i].replaceAll("\\d", "");
			str += arr2[i].trim();
		}
		
		System.out.println(str.trim());
		
		if(answer.getSingle0().split("-")[0].equals(question1.getAnswer())){
			rightQuestion ++;
			score += 10;
		}
		if(answer.getSingle1().split("-")[0].equals(question2.getAnswer())){
			rightQuestion ++;
			score += 10;
		}
		if(str.trim().equals(question3.getAnswer())){
			rightQuestion ++;
			score += 15;
		}
		return "success";
	}
	public int getTotalQuestion() {
		return totalQuestion;
	}
	public void setTotalQuestion(int totalQuestion) {
		this.totalQuestion = totalQuestion;
	}
	public int getRightQuestion() {
		return rightQuestion;
	}
	public void setRightQuestion(int rightQuestion) {
		this.rightQuestion = rightQuestion;
	}
	
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	
	public Answer getAnswer() {
		return answer;
	}
	public void setAnswer(Answer answer) {
		this.answer = answer;
	}
	public List<Question> getQuestions() {
		return questions;
	}
	public void setQuestions(List<Question> questions) {
		this.questions = questions;
	}
	
	
}
