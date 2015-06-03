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
import com.tarena.entity.Student;
@Repository
public class StudentDaoImpl 
	extends HibernateDaoSupport implements StudentDao {

	@Resource
	public void setSF(SessionFactory sf){
		super.setSessionFactory(sf);
	}
	public Student findById(int id) {	
		return (Student) getHibernateTemplate().get(Student.class, id);
	}

	//��Ϊ����hqlд�ģ�����ѯ���Ķ���Ϊnullʱ��һ��ʼ���ص�list.get��0����һֱ�±�Խ��
	//���ڸ��ݼ��Ͻ����жϼ���
	public Student findByName(String name) {
		String hql = "from Student where username = ?";
		Session session = 
				getHibernateTemplate().getSessionFactory().openSession();
		Query query = session.createQuery(hql);
		query.setString(0, name);
		List<Student> list = query.list();
		session.close();
		if(list.size() > 0){
			return list.get(0);
		}else{
			return null;
		}
	}

	public List<Student> findAll() {
		String hql = "from Student";	
		return getHibernateTemplate().find(hql);
	}

	public void save(Student student) {
		getHibernateTemplate().save(student);

	}

	public void update(Student student) {
		getHibernateTemplate().update(student);

	}

	public void delete(int id) {
		Student student = new Student();
		student.setSid(id);
		getHibernateTemplate().delete(student);

	}
	public List<Student> findBykeyword(String keyword, int page, int pageSize) {
		Session session = 
			getHibernateTemplate().getSessionFactory().openSession();
		List<Student> list = null;
		if(keyword == null ||
				keyword.equals("������ؼ���")){
			String sql = "select * from t_student limit ?,?";
			SQLQuery query = session.createSQLQuery(sql);
			query.setInteger(0, (page-1)*pageSize);
			query.setInteger(1, pageSize);
			query.addEntity(Student.class);
			list = query.list();		
		}else{			
			String sql = "select * from t_student where name like ? limit ?,?";		
			SQLQuery query = session.createSQLQuery(sql);
			query.setString(0, "%"+keyword+"%");
			query.setInteger(1, (page-1)*pageSize);
			query.setInteger(2, pageSize);
			query.addEntity(Student.class);
			list = query.list();
		}
		session.close();
		return list;
	}
	/**
	 * Ҫ���ݹؼ��ֲ���ȷ����¼������,����ҪkeywordΪ����
	 */
	public int findRows(String keyword) {
		Session session = 
			getHibernateTemplate().getSessionFactory().openSession();
		if(keyword == null ||
				keyword.equals("������ؼ���")){
			String sql = "select count(*) from t_student";
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
			String sql = "select count(*) from t_student where name like ?";
			
			SQLQuery query = session.createSQLQuery(sql);
			query.setString(0, "%"+keyword+"%");
			List list = query.list();
			session.close();
			Object obj = list.get(0);
			if(obj == null){
				return 0;
			}else{
				return Integer.valueOf(obj.toString());
			}
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<Student> findByInput(String zh, String name, int page,
			int pageSize) {
		String sql = "select * from  t_student ";
		List<Student> list = null;
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		//zh������ֵ��name����ֵ
		if((zh.equals("������ѧ��") || zh.equals("")) && 
				(!name.equals("������ؼ���") && !name.equals(""))){
			sql += "where name like ? limit ?,?";
			session = getHibernateTemplate().getSessionFactory().openSession();
			SQLQuery query = session.createSQLQuery(sql);
			query.setString(0, "%"+name+"%");
			query.setInteger(1, (page-1) * pageSize);
			query.setInteger(2, pageSize);
			query.addEntity(Student.class);
			list = query.list();
		}else if((!zh.equals("������ѧ��") && !zh.equals("")) && 
				(name.equals("������ؼ���") || name.equals(""))){
			sql += "where username = ? limit ?,?";
			session = getHibernateTemplate().getSessionFactory().openSession();
			SQLQuery query = session.createSQLQuery(sql);
			query.setString(0, zh);
			query.setInteger(1, (page-1) * pageSize);
			query.setInteger(2, pageSize);
			query.addEntity(Student.class);
			list = query.list();
		}else if((!zh.equals("������ѧ��") && !zh.equals("")) && 
				(!name.equals("������ؼ���") && !name.equals(""))){
			sql += "where username = ? and name like ? limit ?,?";
			session = getHibernateTemplate().getSessionFactory().openSession();
			SQLQuery query = session.createSQLQuery(sql);
			query.setString(0, zh);
			query.setString(1, "%" + name + "%");
			query.setInteger(2, (page-1) * pageSize);
			query.setInteger(3, pageSize);
			query.addEntity(Student.class);
			list = query.list();
		}else if((zh.equals("������ѧ��") || !zh.equals("")) && 
				(name.equals("������ؼ���") && name.equals(""))){
			session = getHibernateTemplate().getSessionFactory().openSession();
			sql += "limit ?,?";
			SQLQuery query = session.createSQLQuery(sql);
			query.setInteger(0, (page-1) * pageSize);
			query.setInteger(1, pageSize);
			query.addEntity(Student.class);
			list = query.list();
		}
//		�������ƴ����
		session.close();
		return list;
	}
	public List<Student> findBySelect(int examPaperId, int score, int page,
			int pageSize) {
		String sql = "select a.* from  t_student a left join";
		return null;
	}
	

}



