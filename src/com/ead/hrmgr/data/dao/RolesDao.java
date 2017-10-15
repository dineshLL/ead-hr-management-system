package com.ead.hrmgr.data.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.JDBCException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.ead.hrmgr.data.ConnectionManager;
import com.ead.hrmgr.data.model.Role;

public class RolesDao {

	private SessionFactory factory;

	public RolesDao() {
		factory = ConnectionManager.getSessionFactory();
	
	}
	
	public List<Role> list() {
		Session session = null;
		List<Role> list = null;
		
		try {
			session = factory.openSession();
			session.beginTransaction();
			
			list = new ArrayList<>();
			list = (List<Role>) session.createCriteria(Role.class).list();
			
			session.getTransaction().commit();
			
		} catch(JDBCException e) {
			e.printStackTrace();
			
		} finally {
			session.close();
		}
		
		return list;
	}
	
	public int create(Role model) {
		Session session = null;
		int id = -1;
		
		try {
			session = factory.openSession();
			session.beginTransaction();
			
			session.save(model);
			
			session.getTransaction().commit();
			id = model.getRoleId();
			
		} catch(JDBCException e) {
			e.printStackTrace();
			
		} finally {
			session.close();
		}
		
		return id;
	}
	
	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<Role> getValidRoles() {
        Session session = null;
		Transaction tx = null;
        List<Role> roles = null;
        try {
        	session = factory.openSession();
            tx = session.beginTransaction();
            roles = ( List<Role> ) session.createSQLQuery(
                    "select * from role  \n" +
                    "where  role_id NOT IN ( select emp_role from employee )").addEntity(Role.class).list();
            
            for (Iterator<Role> iter = roles.iterator(); 
                iter.hasNext();) {
                Role element = iter.next();
            }
            tx.commit();
        } catch (RuntimeException e) {
            if (tx != null && tx.isActive()) {
                try {
                    roles = null ;
                    tx.rollback();
                } catch (HibernateException e1) {
                    System.out.println("Error rolling back transaction");
                }
                throw e;
            }
        }
        return roles;
    }
	
	
	public Role get(int roleId) {
		Session session = null;
		Role model = null;
		
		try {
			session = factory.openSession();
			session.beginTransaction();
			
			model = session.get(Role.class, roleId);
			
			session.getTransaction().commit();
			
		} catch(JDBCException e) {
			e.printStackTrace();
			
		} finally {
			session.close();
		}
		
		return model;
	}
}
