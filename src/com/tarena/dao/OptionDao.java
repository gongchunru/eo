package com.tarena.dao;

import com.tarena.entity.Option;

public interface OptionDao {

	Option findByQuestionId(int id);
	
	void save(Option option);
	
	void delete(int id);
	
	void update(Option option);
	
	
}
