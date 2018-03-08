package cc.mrbird.system.dao;

import java.util.List;

import cc.mrbird.common.dao.MyMapper;
import cc.mrbird.system.domain.Role;
import cc.mrbird.system.domain.RoleWithMenu;

public interface RoleMapper extends MyMapper<Role> {
	
	List<Role> findUserRole(String userName);
	
	List<RoleWithMenu> findById(Long roleId);
}