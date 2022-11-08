package net.codejava.degreymodal;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
//
//@Entity
//@Table(name = "user")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	 @Column(name = "username", nullable = false, unique = true)
	 @Length(min = 5, message = "*Your username must have at least 5 characters")
	 @NotEmpty(message = "*Please provide your name")
    private String fullname;
	 @Column(name="address", nullable = false)
    private String address;
    @Column(name = "email", unique = true, nullable = false)
    @Email(message = "*Please provide a valid Email")
    @NotEmpty(message = "*Please provide an email")
    private String email;
    @Column(name="phoneNumber")
    private String phoneNumber;
    @Column(name = "password", nullable = false)
    @Length(min = 5, message = "*Your password must have at least 5 characters")
    @NotEmpty(message = "*Please provide your password")
    private String password;
    
    @OneToMany(mappedBy = "user_id")
    @Cascade(CascadeType.DELETE)
    private List<Cart> listCart;
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public User(String fullname, String address, String email, String phoneNumber, String password) {
		super();
		this.fullname = fullname;
		this.address = address;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.password = password;
	}
    public User() {
		// TODO Auto-generated constructor stub
	}
}
