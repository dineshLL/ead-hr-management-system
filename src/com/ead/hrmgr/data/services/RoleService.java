package com.ead.hrmgr.data.services;

import java.util.List;

import com.ead.hrmgr.data.dao.RolesDao;
import com.ead.hrmgr.data.model.Role;

public class RoleService {

	public int createRole(Role model) {
		RolesDao dao = new RolesDao();
		return dao.create(model);
	}
	
	public List<Role> getAllRoles() {
		RolesDao dao = new RolesDao();
		return dao.list();
	}

	public List<Role> getAvailableRoles() {
		return new RolesDao().getValidRoles();
	}
	
	public Role getRoleById(int id) {
		return new RolesDao().get(id);
	}
}
