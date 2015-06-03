package com.tarena.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.tarena.entity.Option;
@Repository
public class OptionDaoImpl 
	extends HibernateDaoSupport implements OptionDao {

	@Resource
	public void setSF(SessionFactory sf){
		super.setSessionFactory(sf);
	}
	public Option findByQuestionId(int id) {
		String hql = "from Option";
		return (Option) getHibernateTemplate().get(Option.class, id);
	}
	public void save(Option option) {
		getHibernateTemplate().save(option);
	}
	
	public void delete(int id){
		Option option = new Option();
		option.setOid(id);
		getHibernateTemplate().delete(option);
	}
	public void update(Option option) {
		getHibernateTemplate().update(option);
	}

}
