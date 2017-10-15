package com.ead.hrmgr.data.servlets;

import java.io.IOException;
import java.util.HashSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ead.hrmgr.data.dao.EmployeeDao;
import com.ead.hrmgr.data.dao.TaskDao;
import com.ead.hrmgr.data.model.Employee;
import com.ead.hrmgr.data.model.Task;

/**
 * Servlet implementation class TaskAssign
 */
@WebServlet("/TaskAssign")
public class TaskAssign extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TaskAssign() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer empId = Integer.valueOf(request.getParameter("id"));
		Employee employee = new EmployeeDao().get(empId);
		Task task = new TaskDao().get(Integer.valueOf(request.getParameter("task")));
		
		if(employee.getTasks() == null) {
			HashSet<Task> tasks = new HashSet<>();
			tasks.add(task);
			
			employee.setTasks(tasks);
		} else {
			
			employee.getTasks().add(task);
		}
		
		task.setEmployee(employee);
		
		new TaskDao().updateEmployee(task);
		new EmployeeDao().updateEmployee(employee);
		
		response.sendRedirect(request.getContextPath() + "/get_employee?id=" + empId);
	}

}
