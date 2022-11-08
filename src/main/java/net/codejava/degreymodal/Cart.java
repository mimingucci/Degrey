package net.codejava.degreymodal;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
//
//@Entity
//@Table(name = "cart")
public class Cart {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
   private int id;
	@ManyToOne
	@Cascade(CascadeType.SAVE_UPDATE)
	@JoinColumn(name = "user_id")
   private User user_id;
	
	@ManyToOne
	@Cascade(CascadeType.SAVE_UPDATE)
	@JoinColumn(name = "items_id")
   private items items_id;
	@Column(name = "quantity")
   private int quantity;

public User getUser_id() {
		return user_id;
	}
	public void setUser_id(User user_id) {
		this.user_id = user_id;
	}
	public items getItems_id() {
		return items_id;
	}
	public void setItems_id(items items_id) {
		this.items_id = items_id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}

  public Cart() {
}
public Cart( User user_id, items items_id, int quantity) {
	super();
	this.user_id = user_id;
	this.items_id = items_id;
	this.quantity = quantity;
}
  
}
