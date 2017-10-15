package com.ead.hrmgr.data.resources;

import java.util.List;

import com.ead.hrmgr.data.model.Role;
import com.ead.hrmgr.data.services.RoleService;

public class RolesResource {

	public List<Role> getRoles() {
		RoleService service = new RoleService();
		return service.getAllRoles();
	}
	
	public List<Role> getAvailableRoles() {
		RoleService service = new RoleService();
		return service.getAvailableRoles();
	}
	
}
