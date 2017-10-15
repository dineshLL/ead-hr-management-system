package com.ead.hrmgr.data.services;

import java.util.List;

import com.ead.hrmgr.data.dao.EmployeeDao;
import com.ead.hrmgr.data.model.Employee;

public class EmployeeService {

	public int createEmployee(Employee model) {
		EmployeeDao dao = new EmployeeDao();
		return dao.create(model);
	}

	public List<Employee> getAllEmployees() {
		EmployeeDao dao = new EmployeeDao();
		return dao.list();
	}
	
}
