package net.codejava.degreydao.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.codejava.degreymodal.CartItem;
import net.codejava.degreymodal.Item;
import net.codejava.degreymodal.User;
@Repository
public class CartItemDAOImpl implements CartItemDAO{

	@Autowired
	private SessionFactory factory;
	
	@Override
	public void saveCartItem(Item item, Integer quantity, User user) {
		Session session=factory.openSession();
		CartItem cartItem=new CartItem();
		cartItem.setUser(user);
		cartItem.setItem(item);
		cartItem.setQuantity(quantity);
		session.beginTransaction();
		session.saveOrUpdate(cartItem);
		session.flush();
		session.close();
	}

	@Override
	public List<CartItem> getCartItemByUser(User user) {
		Session session = factory.getCurrentSession();
		String hql="FROM CartItem AS c WHERE c.user_id = :user_id";
		List<CartItem> listCartItems=session.createQuery(hql, CartItem.class).setParameter("user_id", user.getId()).list();
		return listCartItems;
	}

}
