package com.tarena.dao;

import java.util.List;

import com.tarena.entity.Student;

public interface StudentDao {
	
	Student findById(int id);
	
	Student findByName(String name);
	
	List<Student> findBykeyword(String keyword, int page ,int pageSize);
	
	//根据select框选择
	List<Student> findBySelect(int examPaperId, int score, int page ,int pageSize);
	
	//根据input框选择
	List<Student> findByInput(String zh, String name , int page, int pageSize);
	
	//根据关键字查询总的行数
	int findRows(String keyword);
	
	List<Student> findAll();
	
	
	void save(Student student);
	
	void update(Student student);
	
	void delete(int id);
		
}
