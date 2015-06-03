package com.tarena.dao;

import java.util.List;

import com.tarena.entity.ExamPaper;

public interface ExamPaperDao {
	
	ExamPaper findById(int id);
	
	void save(ExamPaper examPaper);
	
	void delete(int id);
	
	void update(ExamPaper examPaper);

	List<ExamPaper> findByKeyword(String keyword, int page, int pageSize);
	
	List<ExamPaper> find();
	
	int findRows(String keyword);
}
