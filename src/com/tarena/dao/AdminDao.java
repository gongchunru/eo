package com.tarena.dao;

import java.util.List;

import com.tarena.entity.Admin;

public interface AdminDao {
	
	Admin findById(int id);
	
	Admin findByName(String name);
	
	//关键字查询分页
	List<Admin> findByKeyword(String keyword, int page, int pageSize);
	
	//查询总行数
	int findRows(String keyword);
	
	List<Admin> findAll();
	
	void update(Admin admin);
	
	void save(Admin admin);
	
	void delete(int id);


}
