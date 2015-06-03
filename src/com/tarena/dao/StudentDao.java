package com.tarena.dao;

import java.util.List;

import com.tarena.entity.Student;

public interface StudentDao {
	
	Student findById(int id);
	
	Student findByName(String name);
	
	List<Student> findBykeyword(String keyword, int page ,int pageSize);
	
	//����select��ѡ��
	List<Student> findBySelect(int examPaperId, int score, int page ,int pageSize);
	
	//����input��ѡ��
	List<Student> findByInput(String zh, String name , int page, int pageSize);
	
	//���ݹؼ��ֲ�ѯ�ܵ�����
	int findRows(String keyword);
	
	List<Student> findAll();
	
	
	void save(Student student);
	
	void update(Student student);
	
	void delete(int id);
		
}
