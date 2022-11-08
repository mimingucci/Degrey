package net.codejava.service;

import java.util.List;

import net.codejava.model.User;

public interface UserService {
    public List<User> getUsers();
    public void saveUser(User user);
    public User getUser(int theId);
    public void deleteUser(int theId);
}
