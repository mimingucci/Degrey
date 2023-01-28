package net.codejava.degreydao.dao;

import java.util.List;

import net.codejava.degreymodal.CartItem;
import net.codejava.degreymodal.Item;
import net.codejava.degreymodal.User;

public interface CartItemDAO {
   public void saveCartItem(Item item, Integer quantity, User user);
   public List<CartItem> getCartItemByUser(User user);
}
