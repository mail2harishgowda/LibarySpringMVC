package com.db.utility;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtility {
	
private static final SessionFactory sessionFactory=
new Configuration().configure().buildSessionFactory(); 
	
	public static SessionFactory getSessionFactory(){	     
		return sessionFactory; 
	}
	

}
