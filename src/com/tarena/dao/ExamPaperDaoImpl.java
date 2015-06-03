package com.tarena.dao;

import java.util.List;

import javax.annotation.Resource;


import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.tarena.entity.ExamPaper;

@Repository
public class ExamPaperDaoImpl
	extends HibernateDaoSupport implements ExamPaperDao {

	@Resource
	public void setSF(SessionFactory sf){
		super.setSessionFactory(sf);
	}
	
	public ExamPaper findById(int id) {
		return  (ExamPaper) getHibernateTemplate().get(ExamPaper.class, id);
	}
	
	public void save(ExamPaper examPaper) {
		getHibernateTemplate().save(examPaper);
	}

	public void delete(int id) {
		ExamPaper examPaper = new ExamPaper();
		examPaper.setEpid(id);
		getHibernateTemplate().delete(examPaper);
	}

	public void update(ExamPaper examPaper) {
		getHibernateTemplate().update(examPaper);
	}

	public List<ExamPaper> findByKeyword(String keyword, int page, int pageSize) {
		Session session = 
			getHibernateTemplate().getSessionFactory().openSession();
		List<ExamPaper> list = null;
		if(keyword == null || 
				keyword.equals("请输入关键字")){
			String sql = "select * from t_examPaper limit ?,?";
			SQLQuery query = session.createSQLQuery(sql);
			query.setInteger(0, (page-1)*pageSize);
			query.setInteger(1, pageSize);
			//漏了这句话，一直报jsp错误
			query.addEntity(ExamPaper.class);
			list = query.list();
		}else{
			String sql = "select * from t_examPaper where name like ? limit ?,?";
			session = 
				getHibernateTemplate().getSessionFactory().openSession();
			SQLQuery query = session.createSQLQuery(sql);
			query.setString(0, "%" + keyword + "%");
			query.setInteger(1, (page-1)*pageSize);
			query.setInteger(2, pageSize);
			query.addEntity(ExamPaper.class);
			list = query.list();
		}	
		session.close();
		return list;
	}

	public int findRows(String keyword) {
		Session session = 
			getHibernateTemplate().getSessionFactory().openSession();
		if(keyword == null ||
				keyword.equals("请输入关键字")){
			String sql = "select count(*) from t_examPaper";
			SQLQuery query = session.createSQLQuery(sql);
			List list = query.list();
			Object obj = list.get(0);
			session.close();
			if(obj == null){
				return 0;
			}else{
				return Integer.parseInt(obj.toString());
			}
		}else{
			String sql = "select count(*) from t_examPaper where name like ?";
			SQLQuery query = session.createSQLQuery(sql);
			query.setString(0, "%" + keyword + "%");
			List list = query.list();
			Object obj = list.get(0);
			session.close();
			if(obj == null){
				return 0;
			}else{
				return Integer.parseInt(obj.toString());
			}
		}
	}

	public List<ExamPaper> find() {
		String hql = "from ExamPaper";
		return getHibernateTemplate().find(hql);
	}

	
}
