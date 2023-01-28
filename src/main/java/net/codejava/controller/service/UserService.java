package net.codejava.controller.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import net.codejava.degreymodal.User;

public interface UserService {
    public List<User> getUsers();
    public void saveUser(User user);
    public Optional<?> getUser(long theId);
    public void deleteUser(long theId);
}
