package net.codejava.dao;

import java.util.List;

import net.codejava.model.User;

public interface UserDAO {
    public List<User> getUsers();
    public User getUser(int theId);
    public void saveUser(User user);
    public void deleteUser(int theId);
}
