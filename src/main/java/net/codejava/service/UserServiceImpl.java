package net.codejava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.codejava.dao.UserDAO;
import net.codejava.model.User;
@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserDAO userDAO;
	@Override
	@Transactional
	public List<User> getUsers() {
		return userDAO.getUsers();
	}

	@Override
	@Transactional
	public void saveUser(User user) {
		userDAO.saveUser(user);
		
	}

	@Override
	public User getUser(int theId) {
		return userDAO.getUser(theId);
	}

	@Override
	public void deleteUser(int theId) {
		userDAO.deleteUser(theId);
		
	}

}
