package net.codejava.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import net.codejava.degreydao.dao.UserDAO;
import net.codejava.degreymodal.User;

public class CustomUserDetailsService implements UserDetailsService{
	@Autowired
	private UserDAO dao;
	
	public CustomUserDetailsService() {
		
	}

	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		User user = dao.findByEmail(email);
        if (user == null) {
            throw new UsernameNotFoundException("User not found");
        }
        return new CustomUserDetails(user);
	}

}
