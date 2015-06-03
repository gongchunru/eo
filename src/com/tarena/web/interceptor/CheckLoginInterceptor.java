package com.tarena.web.interceptor;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import com.tarena.entity.Admin;
import com.tarena.entity.Student;

public class CheckLoginInterceptor implements Interceptor{

	/**
	 * 
	 */
	private static final long serialVersionUID = -2258318879351970936L;

	public void destroy() {
		
	}

	public void init() {
		
	}

	public String intercept(ActionInvocation ai) throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		Admin admin = (Admin) session.getAttribute("admin");
		Student student = (Student) session.getAttribute("student");
		//两者可以都不为空，也可至少有一个空
		if(admin != null || student != null){
			return ai.invoke();
		}else{
			return "login";
		}
		
	}

}
