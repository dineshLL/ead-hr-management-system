package com.ead.hrmgr.data.resources;

import java.util.List;

import com.ead.hrmgr.data.model.Employee;
import com.ead.hrmgr.data.services.EmployeeService;

public class EmployeeResource {

	public List<Employee> getEmployeeList() {
		EmployeeService service = new EmployeeService();
		return service.getAllEmployees();
	}
	
}
