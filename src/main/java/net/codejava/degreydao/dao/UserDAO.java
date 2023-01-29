package net.codejava.degreydao.dao;

import net.codejava.degreymodal.User;

public interface UserDAO {
    public void saveUser(User user);
    public User findByEmail(String email);
}
