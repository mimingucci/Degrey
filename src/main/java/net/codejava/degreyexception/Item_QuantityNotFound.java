package net.codejava.degreyexception;

import net.codejava.degreymodal.Item;

public class Item_QuantityNotFound {
  private int quantity;
  private Item item;
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public Item getItem() {
	return item;
}
public void setItem(Item item) {
	this.item = item;
}
  public Item_QuantityNotFound() {
	// TODO Auto-generated constructor stub
}
public Item_QuantityNotFound(int quantity, Item item) {
	super();
	this.quantity = quantity;
	this.item = item;
}
  
}
