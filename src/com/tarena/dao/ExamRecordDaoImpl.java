package com.tarena.dao;

import java.util.List;

import javax.annotation.Resource;


import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.tarena.entity.ExamPaper;
import com.tarena.entity.ExamRecord;
@Repository
public class ExamRecordDaoImpl 
		extends HibernateDaoSupport implements ExamRecordDao {

	@Resource
	public void setSF(SessionFactory sf){
		super.setSessionFactory(sf);
	}

	@SuppressWarnings("unchecked")
	public List<ExamRecord> findAll() {
		String hql = "from ExamRecord";
		return getHibernateTemplate().find(hql);
	}

	public List<ExamRecord> findByKeyword(int exampaperId, int score, int page,
			int pageSize) {
		String sql = "select * from t_examRecord where examPaper_id = :examPaper_id and " +
				"score =:score";
		
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<ExamRecord> findByExamPaperName(String examPaperName, String name) {
		String sql = "select * from t_examRecord " +
				"where student_id = " +
				"(select sid from t_student where name= ?)";
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		SQLQuery query = session.createSQLQuery(sql);
		query.setString(0, name);
		if(!("«Î ‰»Îπÿº¸◊÷").equals(examPaperName) && 
				!"".equals(examPaperName)){
			sql += " and examPaper_id in (select epid from t_examPaper where name like ?)";
			query = session.createSQLQuery(sql);
			query.setString(0, name);
			query.setString(1, "%"+examPaperName+"%");		
		}
		query.addEntity(ExamRecord.class);
		List<ExamRecord> list = query.list();
		session.close();
		return list;
	}



}
