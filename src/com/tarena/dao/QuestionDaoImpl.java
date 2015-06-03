package com.tarena.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.tarena.entity.Question;

@Repository
public class QuestionDaoImpl 
extends HibernateDaoSupport implements QuestionDao{

	@Resource
	public void setSF(SessionFactory sf){
		super.setSessionFactory(sf);
	}

	public List<Question> findByExamPaperId(int id) { 
		String sql = "from Question where examPaper_id = ?";
		Session session = 
			getHibernateTemplate().getSessionFactory().openSession();
		Query query = session.createQuery(sql);
		query.setInteger(0, id);
		List<Question> list = query.list();
		session.close();
		return list;
	}

	public void save(Question question) {
		getHibernateTemplate().save(question);
	}

	public Question findById(int id) {
		return (Question) getHibernateTemplate().get(Question.class, id);
	}

	public void update(Question question) {
		getHibernateTemplate().update(question);
	}

	public void delete(int id) {
		Question question = new Question();
		question.setQid(id);
		getHibernateTemplate().delete(question);
	}
}
