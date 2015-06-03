package com.tarena.web.superadmin;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.AdminDao;

@Controller
@Scope("prototype")
public class DeleteAdminAction {
	@Resource
	private AdminDao adminDao;
	private int id;
	public String execute(){
		adminDao.delete(id);
		return "success";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
}
