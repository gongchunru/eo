package com.tarena.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.AdminDao;
import com.tarena.dao.ExamPaperDao;
import com.tarena.dao.StudentDao;
import com.tarena.entity.Admin;
import com.tarena.entity.ExamPaper;
import com.tarena.entity.Student;

@Controller
@Scope("prototype")
public class CheckLoginAction {

	@Resource
	private AdminDao adminDao;
	@Resource
	private StudentDao studentDao;
	//ѭ���������Ծ�
	@Resource
	private ExamPaperDao examPaperDao;
	private String username;
	private String password;
	private String loginError;
	private String role;
	public String execute(){
		
		HttpSession session = 
				ServletActionContext.getRequest().getSession();
		//�ж�Object��Admin���ͣ���ִ��if��
		Object object = adminDao.findByName(username);
		//Admin admin = adminDao.findByName(username);
		if(object instanceof Admin){
			Admin admin = (Admin)object;
			System.out.println(admin.getName());
			if(admin == null){
				loginError = "�˻�������.";
				return "fail";
			}		
			if(!admin.getPassword().equals(password)){
				loginError = "�������.";
				return "fail";
			}
			if(!admin.getRole().equals(role)){
				loginError = "��ɫ����.";
				return "fail";
			}
			session.setAttribute("admin", admin);
		}else{
			//�������Admin����ΪStudent����
			Student student = studentDao.findByName(username);
			if(student == null){
				loginError = "�˻�������.";
				return "fail";
			}		
			if(!student.getPassword().equals(password)){
				loginError = "�������.";
				return "fail";
			}
			if(!"student".equals(role)){
				loginError = "��ɫ����.";
				return "fail";
			}
			session.setAttribute("student", student);
		}
		if("1".equals(role)){			
			return "ok";
		}else if("2".equals(role)){	
		//��ΪҪѭ�������е��Ծ��Ȱ󶨣��Ծ�Action�����Ƿ�ҳ��ѯ
			List<ExamPaper> examList = examPaperDao.find();
			session.setAttribute("examList", examList);
			return "success";
		//ҳ�洫������student
		}else if("student".equals(role)){
			return "good";
		}else{
			return "fail";
		}
		
		
		
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLoginError() {
		return loginError;
	}
	public void setLoginError(String loginError) {
		this.loginError = loginError;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	

}
