package com.ead.hrmgr.data.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ead.hrmgr.data.model.Employee;
import com.ead.hrmgr.data.services.EmployeeService;
import com.ead.hrmgr.data.services.RoleService;

/**
 * Servlet implementation class Employees
 */
@WebServlet("/Employees")
public class Employees extends HttpServlet {
	private static final String ADDRESS = "address";
	private static final String ROLE = "role";
	private static final String SALARY = "salary";
	private static final String NAME = "name";
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Employees() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EmployeeService service = new EmployeeService();
		
		Employee model = new Employee();
		model.setName(request.getParameter(NAME));
		model.setSalary(Long.valueOf(request.getParameter(SALARY)));
		model.setAddress(request.getParameter(ADDRESS));
		model.setEmpRole(new RoleService().getRoleById(Integer.valueOf(request.getParameter(ROLE))));
		
		int empId = service.createEmployee(model);
		response.sendRedirect(request.getContextPath() + "/get_employee?id=" + empId);
	}

}
