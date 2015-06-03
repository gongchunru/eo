package com.tarena.web.admin;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.StudentDao;
import com.tarena.entity.Student;

@Controller
@Scope("prototype")
public class ViewStudentInfoAction {

	private int sid;
	private Student student;
	@Resource
	private StudentDao studentDao;
	public String execute(){
		student = studentDao.findById(sid);
		return "success";
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
}
