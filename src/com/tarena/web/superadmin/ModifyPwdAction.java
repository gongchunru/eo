package com.tarena.web.superadmin;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.AdminDao;
import com.tarena.entity.Admin;

@Controller
@Scope("prototype")
public class ModifyPwdAction {
	@Resource
	private AdminDao adminDao;
	
	private String oldPassword;
	private String newPassword;
	private String renewPassword;
	private String error;
	public String execute(){
		HttpSession session = 
				ServletActionContext.getRequest().getSession();
		Admin admin = (Admin) session.getAttribute("admin");
		
		if(oldPassword == null || 
				oldPassword.equals("") ||
				newPassword == null ||
				newPassword.equals("") ||
				renewPassword == null || 
				renewPassword.equals("")){
			return "fail";
		}
		if(!admin.getPassword().equals(oldPassword)){
			error = "旧密码错误.";
			return "fail";
		}
		if(!newPassword.equals(renewPassword)){
			error = "两次输入不一致.";
			return "fail";
		}
		admin.setPassword(newPassword);
		adminDao.update(admin);
		return "success";
	}
	public String getOldPassword() {
		return oldPassword;
	}
	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}
	public String getNewPassword() {
		return newPassword;
	}
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	public String getRenewPassword() {
		return renewPassword;
	}
	public void setRenewPassword(String renewPassword) {
		this.renewPassword = renewPassword;
	}
	public String getError() {
		return error;
	}
	public void setError(String error) {
		this.error = error;
	}
	
	

}
