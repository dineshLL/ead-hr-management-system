package com.ead.hrmgr.data.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.JDBCException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.ead.hrmgr.data.ConnectionManager;
import com.ead.hrmgr.data.model.Employee;
import com.ead.hrmgr.data.model.Task;

public class TaskDao {

	private static final String TASK_SELECT = "SELECT * from task where emp_id is null";
	private SessionFactory factory;

	public TaskDao() {
		factory = ConnectionManager.getSessionFactory();
	}
	
	@SuppressWarnings({ "unchecked", "deprecation" })
	public List<Task> list() {
		Session session = null;
		List<Task> list = null;
		
		try {
			session = factory.openSession();
			session.beginTransaction();
			
			list = new ArrayList<>();
			list = (List<Task>) session.createCriteria(Task.class).list();
			
			session.getTransaction().commit();
			
		} catch(JDBCException e) {
			e.printStackTrace();
			
		} finally {
			session.close();
		}
		
		return list;
	}
	
	
	public Task get(int taskId) {
		Session session = null;
		Task model = null;
		try {
			model = new Task();
			session = factory.openSession();
			
			session.beginTransaction();
			model = (Task) session.get(Task.class, taskId);
	
			session.getTransaction().commit();
			
		}catch(JDBCException e) {
			e.printStackTrace();
			
		}finally {
			session.close();
		}
		
		return model;
	}
	
	public int create(Task model) {
		Session session = null;
		int id = 0;
		try {
			session = factory.openSession();
			
			session.beginTransaction();
			
			session.save(model);
			id = model.getTaskId();
			session.getTransaction().commit();
			
		}catch(JDBCException e) {
			e.printStackTrace();
			
		}finally {
			session.close();
		}
		
		return id;
	}
	
	@SuppressWarnings({ "unchecked", "deprecation" })
	public List<Task> getUnAssignedTasks() {
		Session session = null;
		List<Task> list = null;
		
		try {
			session = factory.openSession();
			session.beginTransaction();
			
			list = new ArrayList<>();
			list = (List<Task>) session.createSQLQuery(TASK_SELECT).addEntity(Task.class)
					.list();
			
			session.getTransaction().commit();
			
		} catch(JDBCException e) {
			e.printStackTrace();
			
		} finally {
			session.close();
		}
		
		return list;
	}
	
	public void updateEmployee(Task model) {
		Session session = null;
		
		try {
			session = factory.openSession();
			
			session.beginTransaction();
			session.update(model);
	
			session.getTransaction().commit();
			
		} catch(JDBCException e) {
			e.printStackTrace();
			
		} finally {
			session.close();
		}
	}
	
	
}
