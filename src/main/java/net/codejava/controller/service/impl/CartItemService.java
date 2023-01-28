package net.codejava.controller.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.codejava.degreydao.dao.CartItemDAOImpl;

@Service
public class CartItemService {

	@Autowired
	private CartItemDAOImpl repo;
	
}
