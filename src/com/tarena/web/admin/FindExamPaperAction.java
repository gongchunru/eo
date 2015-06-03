package com.tarena.web.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.ExamPaperDao;
import com.tarena.entity.ExamPaper;

@Controller
@Scope("prototype")
public class FindExamPaperAction {

	@Resource
	private ExamPaperDao examPaperDao;
	
	private String keyword;
	private int page = 1;
	private int pageSize = 1;
	private int rows;
	private int totalPage;
	private List<ExamPaper> list;
	public String execute(){
		rows = examPaperDao.findRows(keyword);
		if(rows % pageSize == 0){
			totalPage = rows / pageSize;
		}else{
			totalPage = rows /pageSize + 1; 
		}
		list = examPaperDao.findByKeyword(keyword, page, pageSize);
		return "success";
	}
	public List<ExamPaper> getList() {
		return list;
	}
	public void setList(List<ExamPaper> list) {
		this.list = list;
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
