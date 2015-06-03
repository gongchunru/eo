package com.tarena.web.admin;


import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;


import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.StudentDao;
import com.tarena.entity.Student;

@Controller
@Scope("prototype")
public class FindStudentAction {

	@Resource
	private StudentDao studentDao;
	private String keyword;
	private int page = 1;
	private int pageSize = 2;
	private List<Student> list;
	private int rows;
	private int totalPage;
	public String execute(){
		list = studentDao.findBykeyword(keyword, page, pageSize);
		rows = studentDao.findRows(keyword);
		try {
			//jspÖÐµÄ±àÂëÊÇutf-8
			keyword = new String(keyword.getBytes("utf-8"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		if(rows % pageSize == 0){
			totalPage = rows / pageSize;
		}else{
			totalPage = rows /pageSize + 1;
		}
		return "success";
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public List<Student> getList() {
		return list;
	}
	public void setList(List<Student> list) {
		this.list = list;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	
	
}
