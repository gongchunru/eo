package com.tarena.web.superadmin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.tarena.dao.AdminDao;
import com.tarena.entity.Admin;

/**
 * session必须关闭
 * @author hht
 *
 */
@Controller
@Scope("prototype")
public class FindAdminAction {
	
	@Resource
	private AdminDao adminDao;
	private int pageSize = 1;
	private String keyword;
	private int page = 1;
	private int totalPage;
	private List<Admin> list;
	private int rows;
	public String execute(){
		rows = adminDao.findRows(keyword);
		
		if(rows % pageSize == 0){
			totalPage = rows / pageSize; 
		}else{
			totalPage = rows / pageSize + 1;
		}
		list = adminDao.findByKeyword(keyword, page, pageSize);
		//传参数时，也要把keyword传过去
		System.out.println(list.size());
		System.out.println(keyword);
		for(Admin admin : list ){
			System.out.println(admin.getName());
		}
		return "success";
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public List<Admin> getList() {
		return list;
	}
	public void setList(List<Admin> list) {
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
	
	
	
}
