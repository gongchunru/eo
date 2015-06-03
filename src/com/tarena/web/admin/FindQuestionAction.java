package com.tarena.web.admin;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.QuestionDao;

@Controller
@Scope("prototype")
public class FindQuestionAction {

	@Resource
	private QuestionDao questionDao;
	
	public String execute(){
		
		return "success";
	}
}
