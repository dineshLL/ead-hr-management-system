package com.ead.hrmgr.data.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ead.hrmgr.data.model.Role;
import com.ead.hrmgr.data.services.RoleService;

/**
 * Servlet implementation class UserRoles
 */
@WebServlet("/UserRoles")
public class UserRoles extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRoles() {
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
		
		Role model = new Role();
		model.setDescription(request.getParameter("description"));
		model.setTitle(request.getParameter("title"));
		
		RoleService service = new RoleService();
		service.createRole(model);
		
		response.sendRedirect(request.getContextPath() + "/user-roles.jsp");
	}

}
