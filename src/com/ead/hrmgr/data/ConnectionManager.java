package com.ead.hrmgr.data;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ConnectionManager {
	
	private static SessionFactory sessionFactory = null;
	
	private ConnectionManager() {
		
	}
	
	public static SessionFactory getSessionFactory() {
		if(sessionFactory == null || sessionFactory.isClosed()) {
			sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		}
		
		return sessionFactory;
	}
	
	public static boolean shutDown() {
		boolean result = false;
		try {	
			sessionFactory.close();
			result = true;
		}catch(Exception e) {
			result = false;
		}
		return result;
	}

}