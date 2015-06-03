package com.tarena.web.superadmin;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.AdminDao;
import com.tarena.entity.Admin;

@Controller
@Scope("prototype")
public class AddAdminAction {

	@Resource
	private AdminDao adminDao;
	/**
	 * Admin¿ÉÒÔ×¢ÈëÂð £¿
	 */
	private String role = "2";
	private String zh;
	private String password;
	private String name;
	
	@SuppressWarnings("unchecked")
	public String execute(){
		if(zh == null || zh.equals("")
				|| password == null || password.equals("")
				|| name == null || name.equals("")){			
			return "fail";
		}
		HttpSession session = ServletActionContext.getRequest().getSession();
		Map<String, Object> map = (Map<String, Object>) session.getAttribute("map");	
		if(map.get("success").equals(false)){
			return "fail";
		}
		
		System.out.println(zh+ " " + name );
		Admin admin = new Admin();
		admin.setAdminName(zh);
		admin.setName(name);
		admin.setPassword(password);
		admin.setRole(role);		
		adminDao.save(admin);
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
