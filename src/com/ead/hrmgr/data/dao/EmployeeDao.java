package com.ead.hrmgr.data.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.JDBCException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.ead.hrmgr.data.ConnectionManager;
import com.ead.hrmgr.data.model.Employee;

public class EmployeeDao {

	private SessionFactory factory;

	public EmployeeDao() {
		factory = ConnectionManager.getSessionFactory();
	
	}
	
	public Employee get(int empId) {
		Session session = null;
		Employee model = null;
		try {
			model = new Employee();
			session = factory.openSession();
			
			session.beginTransaction();
			model = (Employee) session.get(Employee.class, empId);
	
			session.getTransaction().commit();
			
		}catch(JDBCException e) {
			e.printStackTrace();
			
		}finally {
			session.close();
		}
		
		return model;
	}
	
	public int create(Employee model) {
		Session session = null;
		int id = -1;
		
		try {
			session = factory.openSession();
			session.beginTransaction();
			
			session.save(model);
			
			session.getTransaction().commit();
			id = model.getEmployeeId();
			
		} catch(JDBCException e) {
			e.printStackTrace();
			
		} finally {
			session.close();
		}
		
		return id;
	}

	@SuppressWarnings("unchecked")
	public List<Employee> list() {
		Session session = null;
		List<Employee> list = null;
		
		try {
			session = factory.openSession();
			session.beginTransaction();
			
			list = new ArrayList<>();
			list = (List<Employee>) session.createCriteria(Employee.class).list();
			
			session.getTransaction().commit();
			
		}catch(JDBCException e) {
			e.printStackTrace();
			
		}finally {
			session.close();
		}
		
		return list;
	}

	public void updateEmployee(Employee employee) {
		Session session = null;
		
		try {
			session = factory.openSession();
			
			session.beginTransaction();
			session.update(employee);
	
			session.getTransaction().commit();
			
		} catch(JDBCException e) {
			e.printStackTrace();
			
		} finally {
			session.close();
		}
	}
	
}
