package com.tarena.web.admin;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.StudentDao;
import com.tarena.entity.Student;

@Controller
@Scope("prototype")
public class CheckStudentNameAction {

	private String zh;
	private Map<String, Object> maps = new HashMap<String, Object>();
	@Resource
	private StudentDao studentDao;
	public String execute(){
		Student student = studentDao.findByName(zh);
		//����ȥ���if���ܽ�ȥelse
		if(student == null){
			maps.put("success", true);
			maps.put("message", "�û�����Ч");
		}else{
			maps.put("success", false);
			maps.put("message", "�û�������");
		}
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("maps", maps);
		return "success";
	}
	public String getZh() {
		return zh;
	}
	public void setZh(String zh) {
		this.zh = zh;
	}
	public Map<String, Object> getMaps() {
		return maps;
	}
	public void setMaps(Map<String, Object> maps) {
		this.maps = maps;
	}
}
