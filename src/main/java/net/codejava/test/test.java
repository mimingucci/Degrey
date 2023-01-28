package net.codejava.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;

import net.codejava.degreydao.dao.UserDAO;
import net.codejava.degreymodal.Role;
import net.codejava.degreymodal.User;

public class test {
	@Autowired
	private UserDAO userDAO;
  public static void main(String[] args) {
	  
	User user=new User();
	user.setFullname("Nguyen Tien Vu");
	user.setEmail("gtvvunguye@gmail.com");
	user.setPassword("toivaban12345");
	user.setPhoneNumber("0355086925");
	user.setAddress("An Khanh - Hoai Duc - Ha Noi");
	user.setRole(Role.USER);
	
}
}
