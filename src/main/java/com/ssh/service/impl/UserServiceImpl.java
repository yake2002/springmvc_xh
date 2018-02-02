package com.ssh.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssh.dao.UserDao;
import com.ssh.entity.AcctUser;
import com.ssh.service.UserService;

@Service("userService")  
public class UserServiceImpl implements UserService {  
  
    @Autowired  
    private UserDao userDao;  
  
    @Override  
    public AcctUser load(String id) {  
        return userDao.load(id);  
    }  
  
    @Override  
    public AcctUser get(String id) {  
        return userDao.get(id);  
    }  
  
    @Override  
    public List<AcctUser> findAll() {  
        return userDao.findAll();  
    }  
  
    @Override  
    public void persist(AcctUser entity) {  
        userDao.persist(entity);  
    }  
  
    @Override  
    public String save(AcctUser entity) {  
        return userDao.save(entity);  
    }  
  
    @Override  
    public void saveOrUpdate(AcctUser entity) {  
        userDao.saveOrUpdate(entity);  
    }  
  
    @Override  
    public void delete(String id) {  
        userDao.delete(id);  
    }  
  
    @Override  
    public void flush() {  
        userDao.flush();  
    }  
  
}  