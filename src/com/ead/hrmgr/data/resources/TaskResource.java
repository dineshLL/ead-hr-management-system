package com.ead.hrmgr.data.resources;

import java.util.List;

import com.ead.hrmgr.data.model.Task;
import com.ead.hrmgr.data.services.TaskService;

public class TaskResource {

	public List<Task> getTasks() {
		TaskService service = new TaskService();
		return service.getAllTasks();
	}
	
	public List<Task> getUnassignedTasks() {
		TaskService service = new TaskService();
		return service.getUnAssignedTasks();
	}
	
}
