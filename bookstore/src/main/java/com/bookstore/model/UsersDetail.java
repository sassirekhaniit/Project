package com.bookstore.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.io.Serializable;



@Entity
public class UsersDetail implements Serializable{

    private static final long serialVersionUID = 15L;

    @Id
    @GeneratedValue
    private int userId;

	@NotEmpty (message = "User name can not be empty.")
    private String userFullName;

	@NotEmpty (message = "Email name can not be empty.")
    private String userEmail;

	private String userPhone;

	@NotEmpty (message = "Username must not be empty.")
    private String username;

    @NotEmpty (message = "Password must not be empty.")
    private String password;

    private boolean enabled;

    @OneToOne
    @JoinColumn(name="billingAddressId")
    private BillingAdd billingAddress;

    @OneToOne
    @JoinColumn(name="shippingAddressId")
    private ShippingAdd shippingAddress;

    @OneToOne
    @JoinColumn(name = "cartId")
    @JsonIgnore
    private Cart cart;

 
    public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhone() {
			return userPhone;
	}

	public void setUserPhone(String userPhone) {
			this.userPhone = userPhone;
	}

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public BillingAdd getBillingAddress() {
        return billingAddress;
    }

    public void setBillingAddress(BillingAdd billingAddress) {
        this.billingAddress = billingAddress;
    }

    public ShippingAdd getShippingAddress() {
        return shippingAddress;
    }

    public void setShippingAddress(ShippingAdd shippingAddress) {
        this.shippingAddress = shippingAddress;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }
    
    public int getUserId() {
  		return userId;
  	}

  	public void setUserId(int userId) {
  		this.userId = userId;
  	}
  	 public String getUserFullName() {
 		return userFullName;
 	}

 	public void setUserFullName(String userFullName) {
 		this.userFullName = userFullName;
 	}
}
