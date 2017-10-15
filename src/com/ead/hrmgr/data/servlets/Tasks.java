package com.ead.hrmgr.data.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ead.hrmgr.data.model.Task;
import com.ead.hrmgr.data.services.TaskService;

/**
 * Servlet implementation class Tasks
 */
@WebServlet("/Tasks")
public class Tasks extends HttpServlet {
	private static final String DESCRIPTION = "description";
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Tasks() {
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
		
		Task model = new Task();
		model.setDescription(request.getParameter(DESCRIPTION));
		
		TaskService service = new TaskService();
		service.createTask(model);
		
		response.sendRedirect(request.getContextPath() + "/tasks.jsp");
	}

}
