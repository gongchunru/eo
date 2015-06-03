package com.tarena.dao;

import java.util.List;

import com.tarena.entity.Admin;

public interface AdminDao {
	
	Admin findById(int id);
	
	Admin findByName(String name);
	
	//�ؼ��ֲ�ѯ��ҳ
	List<Admin> findByKeyword(String keyword, int page, int pageSize);
	
	//��ѯ������
	int findRows(String keyword);
	
	List<Admin> findAll();
	
	void update(Admin admin);
	
	void save(Admin admin);
	
	void delete(int id);


}
