package com.tarena.web.student;

import java.sql.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.StudentDao;
import com.tarena.entity.Student;

@Controller
@Scope("prototype")
public class ModifyInfoAction {

	private String zh;
	private String password;
	private String repassword;
	private String name;
	private String clas;
	private String sex;
	private String YYYY;
	private String MM;
	private String DD;
	private String city;
	private String tele;
	private String mobile;
	private String email;
	private String remarks;
	private String info = "success";
	@Resource
	private StudentDao studentDao;
	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		if(YYYY.equals("") || 
				MM.equals("") || 
				DD.equals("") ||
				zh.equals("") ||
				password.equals("") ||
				repassword.equals("") ||
				name.equals("") ||
				sex.equals("") ||
				city.equals("") ||
				clas.equals("") ||
				tele.equals("") ||
				mobile.equals("") ||
				email.equals("") ||
				remarks.equals("")){
			return "fail";
		}
		if(!password.equals(repassword)){
			return "fail";
		}
		Student student = new Student();
		student.setUsername(zh);
		student.setName(name);
		student.setPassword(password);
		student.setSex(sex);
		
		student.setBirth(Date.valueOf(YYYY + "-" + MM + "-" + DD));
		System.out.println(student.getBirth());
		student.setGrade(clas);
		student.setEmail(email);
		student.setAddress(city);
		student.setTele(tele);
		student.setMobile(mobile);
		student.setRemarks(remarks);
		studentDao.update(student);
		
		request.setAttribute("info", info);
		return "success";
	}
	public String getZh() {
		return zh;
	}
	public void setZh(String zh) {
		this.zh = zh;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getClas() {
		return clas;
	}
	public void setClas(String clas) {
		this.clas = clas;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getYYYY() {
		return YYYY;
	}
	public void setYYYY(String yYYY) {
		YYYY = yYYY;
	}
	public String getMM() {
		return MM;
	}
	public void setMM(String mM) {
		MM = mM;
	}
	public String getDD() {
		return DD;
	}
	public void setDD(String dD) {
		DD = dD;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getTele() {
		return tele;
	}
	public void setTele(String tele) {
		this.tele = tele;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
}
