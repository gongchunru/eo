package com.tarena.web.superadmin;

import java.util.HashMap;
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
public class CheckAdminNameAction {

	@Resource
	private AdminDao adminDao;
	private String zh;
	//创建对象，不然空指针
	private Map<String,Object> map = new HashMap<String, Object>();
	public String execute(){
		Admin admin = adminDao.findByName(zh);
		if(admin == null){
			map.put("success", true);
			map.put("message", "用户名有效.");
		}else{
			map.put("success", false);
			map.put("message", "用户名已存在.");
			System.out.println(admin.getAdminName());
		}
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("map", map);
		return "success";
	}
	public String getZh() {
		return zh;
	}
	public void setZh(String zh) {
		this.zh = zh;
	}
	public Map<String, Object> getMap() {
		return map;
	}
	public void setMap(Map<String, Object> map) {
		this.map = map;
	}
	
}
