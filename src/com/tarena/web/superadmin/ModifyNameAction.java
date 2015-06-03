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
public class ModifyNameAction {

	@Resource
	private AdminDao adminDao;
	private String newName;
	public String execute(){
		if(newName == null 
				|| newName.equals("")){
			return "fail";
		}
		HttpSession session = 
				ServletActionContext.getRequest().getSession();
		Admin admin = (Admin) session.getAttribute("admin");
		admin.setName(newName);
		adminDao.update(admin);
		session.setAttribute("Admin", admin);
		return "success";
	}
	public String getNewName() {
		return newName;
	}
	public void setNewName(String newName) {
		this.newName = newName;
	}
	
}
