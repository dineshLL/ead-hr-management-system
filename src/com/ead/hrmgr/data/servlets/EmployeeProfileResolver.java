package com.ead.hrmgr.data.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.ead.hrmgr.data.dao.EmployeeDao;
import com.ead.hrmgr.data.model.Employee;

/**
 * Servlet implementation class EmployeeProfileResolver
 */
@WebServlet("/get_employee")
public class EmployeeProfileResolver extends HttpServlet {
	private static final String ID = "id";
	private static final long serialVersionUID = 1L;
       
	private Logger logger = LoggerFactory.getLogger(EmployeeProfileResolver.class);
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeProfileResolver() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Integer employeeId = Integer.valueOf(request.getParameter(ID));
		
		EmployeeDao dao = new EmployeeDao();
		Employee model = dao.get(employeeId);
		
		request.setAttribute("model", model);
		request.getRequestDispatcher("/profile.jsp").forward(request, response);
	}

}
