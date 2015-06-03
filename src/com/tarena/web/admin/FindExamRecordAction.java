package com.tarena.web.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.ExamRecordDao;
import com.tarena.dao.StudentDao;
import com.tarena.entity.ExamRecord;
import com.tarena.entity.Student;

@Controller
@Scope("prototype")
public class FindExamRecordAction {
	
	private Integer examPaperId;
	private Integer score;
	private String zh;
	private String name;
	private int page = 1;
	private int pageSize = 1;
	private List<Student> students;
	private List<ExamRecord> examRecords;
	@Resource
	private StudentDao studentDao;
	
	@Resource
	private ExamRecordDao examRecordDao;
	public String execute(){
		if((!zh.equals("«Î ‰»Î—ß∫≈") && !zh.equals("")) || 
				!name.equals("«Î ‰»Îπÿº¸◊÷") && !name.equals("")){
			students= studentDao.findByInput(zh, name, page, pageSize);
			System.out.println(students.size());
		}
		examRecords = examRecordDao.findAll();
		return "success";
	}

	public Integer getExamPaperId() {
		return examPaperId;
	}

	public void setExamPaperId(Integer examPaperId) {
		this.examPaperId = examPaperId;
	}

	public Integer getScore() {
		return score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

	public String getZh() {
		return zh;
	}

	public void setZh(String zh) {
		this.zh = zh;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Student> getStudents() {
		return students;
	}

	public void setStudents(List<Student> students) {
		this.students = students;
	}

	public List<ExamRecord> getExamRecords() {
		return examRecords;
	}

	public void setExamRecords(List<ExamRecord> examRecords) {
		this.examRecords = examRecords;
	}
	
	
}
