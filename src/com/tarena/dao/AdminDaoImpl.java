package com.tarena.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.tarena.entity.Admin;


@Repository
public class AdminDaoImpl 
	extends HibernateDaoSupport implements AdminDao {

	@Resource
	public void setSF(SessionFactory sf){
		super.setSessionFactory(sf);
	}
	
	public List<Admin> findAll() {
		String hql = "from Admin";
		return getHibernateTemplate().find(hql);
	}
	
	public Admin findById(int id) {
		
		return (Admin) getHibernateTemplate().get(Admin.class, id);
	}

	public Admin findByName(String name) {
		String hql = "from Admin where adminName = ?";		
		Session session = 
				getHibernateTemplate().getSessionFactory().openSession();
		Query query = session.createQuery(hql);
		query.setString(0, name);
		List<Admin> list = query.list();
		session.close();
		if(list.size() != 0){
			return list.get(0);
		}else{
			return null;
		}		
	}

	public void update(Admin admin) {
		getHibernateTemplate().update(admin);
		
	}

	public void save(Admin admin) {
		getHibernateTemplate().save(admin);
	}

	public void delete(int id) {
		Admin admin = new Admin();
		admin.setAid(id);
		getHibernateTemplate().delete(admin);
	}

	public List<Admin> findByKeyword(String keyword, 
			int page, int pageSize) {
		Session session = 
			getHibernateTemplate().getSessionFactory().openSession();
		List<Admin> list = null;
		if(keyword == null || 
				keyword.equals("请输入关键字")){
			String sql = "select * from t_admin where aid != 1 limit ?,?";
			SQLQuery query = session.createSQLQuery(sql);
			query.setInteger(0, (page-1)*pageSize);
			query.setInteger(1, pageSize);
			query.addEntity(Admin.class);
			list = query.list();
		}else{
			
			String sql = "select * from t_admin where adminName "
				+ "like ? and aid != 1 limit ?,?";			
			SQLQuery query = session.createSQLQuery(sql);
			query.setString(0,"%"+keyword+"%");
			query.setInteger(1, (page-1)*pageSize);
			query.setInteger(2, pageSize);
			query.addEntity(Admin.class);
			list = query.list();
		}
		//session必须关闭
		session.close();
		return list;
	}

	public int findRows(String keyword) {
		Session session = 
			getHibernateTemplate().getSessionFactory().openSession();
		if(keyword == null ||
				keyword.equals("请输入关键字")){
			String sql = "select count(*) from t_admin where aid != 1";
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
			
			String sql = "select count(*) from t_admin where adminName like ? and aid != 1";		
			SQLQuery query = session.createSQLQuery(sql);
			query.setString(0, "%"+ keyword + "%");
			List list = query.list();
			Object obj = list.get(0);
			//session必须关闭
			session.close();
			if(obj == null){
				return 0;
			}else{			
				return Integer.valueOf(obj.toString());
			}
		}		
	}

	


}
