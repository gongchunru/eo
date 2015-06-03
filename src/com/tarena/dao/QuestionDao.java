package com.tarena.dao;

import java.util.List;

import com.tarena.entity.Question;

public interface QuestionDao {

	List<Question> findByExamPaperId(int id);
	
	Question findById(int id);
	
	void save(Question question);
	
	void update(Question question);
	
	void delete(int id);
	
}
