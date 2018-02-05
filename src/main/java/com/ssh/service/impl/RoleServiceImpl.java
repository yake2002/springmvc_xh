package com.ssh.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssh.dao.RoleDao;
import com.ssh.entity.AcctRole;
import com.ssh.service.RoleService;

@Service("roleService")
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleDao roleDao;

	@Override
	public AcctRole load(String id) {
		return roleDao.load(id);
	}

	@Override
	public AcctRole get(String id) {
		return roleDao.get(id);
	}

	@Override
	public List<AcctRole> findAll() {
		return roleDao.findAll();
	}

	@Override
	public void persist(AcctRole entity) {
		roleDao.persist(entity);
	}

	@Override
	public String save(AcctRole entity) {
		return roleDao.save(entity);
	}

	@Override
	public void saveOrUpdate(AcctRole entity) {
		roleDao.saveOrUpdate(entity);
	}

	@Override
	public void delete(String id) {
		roleDao.delete(id);
	}

	@Override
	public void flush() {
		roleDao.flush();
	}

}
