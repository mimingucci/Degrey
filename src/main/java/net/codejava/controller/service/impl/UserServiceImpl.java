package net.codejava.controller.service.impl;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.codejava.controller.service.UserService;
import net.codejava.degreydao.dao.UserDAO;
import net.codejava.degreydao.dao.UserDAOImpl;
import net.codejava.degreymodal.User;
@Service
public class UserServiceImpl implements UserService{
    
    private UserDAOImpl userDAO;
    
    @Autowired
	public UserServiceImpl(UserDAOImpl userDAO) {
		super();
		this.userDAO = userDAO;
	}

	@Override
	public List<User> getUsers() {
		return null;
	}

	@Override
	public void saveUser(User user) {
		userDAO.saveUser(user);
	}

	@Override
	public Optional<?> getUser(long theId) {
		return null;
	}

	@Override
	public void deleteUser(long theId) {
		
		
	}

}
