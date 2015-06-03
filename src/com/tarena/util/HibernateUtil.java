package com.tarena.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

	private static SessionFactory sf;
	
	static{
		Configuration conf  = new Configuration();
		conf.configure("/applicationContext.xml");
		sf = conf.buildSessionFactory();
	}
	
	public static Session getSession(){
		return sf.openSession();
	}
}
