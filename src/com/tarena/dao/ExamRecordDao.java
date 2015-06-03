package com.tarena.dao;

import java.util.List;

import com.tarena.entity.ExamRecord;

public interface ExamRecordDao {
	
	List<ExamRecord> findByKeyword(int exampaperId,int score, int page, int pageSize);

	List<ExamRecord> findAll();
	
	List<ExamRecord> findByExamPaperName(String examPaperName, String name);
	
}
