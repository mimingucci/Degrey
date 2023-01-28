package net.codejava.degreymodal;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.NaturalId;
import org.hibernate.annotations.NaturalIdCache;

@Entity
@Table(name = "items")
public class Item{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "price")
	private BigDecimal price;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "percentSale")
	private int percentSale;
	
	@Column(name = "sizeImage")
	private int sizeImage;
	
	@Column(name = "description")
	private String description;
	
	@Column(name = "state")
	private boolean state;
	
	@Column(name = "isS", nullable = true)
	private boolean isS;
	
	@Column(name = "isM", nullable = true)
	private boolean isM;
	
	@Column(name = "isL", nullable = true)
	private boolean isL;
	
	@Column(name = "isXL", nullable = true)
	private boolean isXL;
	
	@Column(name = "type")
	private String type;
	
	@OneToMany(mappedBy = "item", orphanRemoval = true, cascade = CascadeType.ALL)
	private Set<CartItem> carts=new HashSet();
	

	public Set<CartItem> getCarts() {
		return carts;
	}

	public void setCarts(Set<CartItem> carts) {
		this.carts = carts;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public boolean getState() {
		return state;
	}

	public boolean getIsS() {
		return isS;
	}

	public void setS(boolean isS) {
		this.isS = isS;
	}

	public boolean getIsM() {
		return isM;
	}

	public void setM(boolean isM) {
		this.isM = isM;
	}

	public boolean getIsL() {
		return isL;
	}

	public void setL(boolean isL) {
		this.isL = isL;
	}

	public boolean getIsXL() {
		return isXL;
	}

	public void setXL(boolean isXL) {
		this.isXL = isXL;
	}

	public void setState(boolean state) {
		this.state = state;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getSizeImage() {
		return sizeImage;
	}

	public void setSizeImage(int sizeImage) {
		this.sizeImage = sizeImage;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPercentSale() {
		return percentSale;
	}

	public void setPercentSale(int percentSale) {
		this.percentSale = percentSale;
	}

	public Item() {
		// TODO Auto-generated constructor stub
	}

	public Item(BigDecimal price, String name, int percentSale, int sizeImage, String description, String type,
			boolean isS, boolean isM, boolean isL, boolean isXL, boolean state) {
		super();
		this.price = price;
		this.name = name;
		this.percentSale = percentSale;
		this.sizeImage = sizeImage;
		this.description = description;
		this.state = state;
		this.isS = isS;
		this.isM = isM;
		this.isL = isL;
		this.isXL = isXL;
		this.type = type;
	}
	 @Override
	    public boolean equals(Object o) {
	        if (this == o) return true;
	        if (o == null || getClass() != o.getClass()) return false;
	        Item item = (Item) o;
	        return Objects.equals(id, item.id);
	    }
	 
	    @Override
	    public int hashCode() {
	        return Objects.hash(id);
	    }

}
