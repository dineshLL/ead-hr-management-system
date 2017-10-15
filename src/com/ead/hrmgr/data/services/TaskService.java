package com.ead.hrmgr.data.services;

import java.util.List;

import com.ead.hrmgr.data.dao.TaskDao;
import com.ead.hrmgr.data.model.Task;

public class TaskService {

	public List<Task> getAllTasks() {
		TaskDao dao = new TaskDao();
		return dao.list();
	}
	
	public Task getTask(int taskId) {
		TaskDao dao = new TaskDao();
		return dao.get(taskId);
	}
	
	public int createTask(Task model) {
		TaskDao dao = new TaskDao();
		int id = dao.create(model);
		
		return id;
	}
	
	public List<Task> getUnAssignedTasks() {
		TaskDao dao = new TaskDao();
		return dao.getUnAssignedTasks();
	}
}
