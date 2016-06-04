package com.bookstore.model;
import org.hibernate.validator.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serializable;



@Entity
public class CardDetail implements Serializable{

    private static final long serialVersionUID = 21L;

   
	@Id
    @GeneratedValue
    private int cardID;
	
	@NotEmpty (message = "Please select card type.")
    private String cardType;
	
	@NotEmpty (message = "The card number must not be null.")
    private String cardNumber;

    @NotEmpty (message = "Please select expiry month.")
    private String expiryMonth;

	@NotEmpty (message = "Please select expiry year.")
    private String expiryYear;

    @NotEmpty (message = "The CVV2/CVC2 number must not be null.")
    private String cvNumber;

    @NotEmpty (message = "The name must not be null.")
    private String nameOnCard;
    
    @NotEmpty (message = "The ATM pin must not be null.")
    private String atmPin;
    
    @ManyToOne
    @JoinColumn(name = "cartId")
    @JsonIgnore
    private Cart cart;
    
    @ManyToOne
    @JoinColumn(name = "userId")
    @JsonIgnore
    private UsersDetail usersDetail;
    
    
   

	private double totalCost;
    
	

	public double getTotalCost() {
		return totalCost;
	}

	public void setTotalCost(double totalCost) {
		this.totalCost = totalCost;
	}

	public int getCardID() {
		return cardID;
	}

	public void setCardID(int cardID) {
		this.cardID = cardID;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public String getCvNumber() {
		return cvNumber;
	}

	public void setCvNumber(String cvNumber) {
		this.cvNumber = cvNumber;
	}

	public String getNameOnCard() {
		return nameOnCard;
	}

	public void setNameOnCard(String nameOnCard) {
		this.nameOnCard = nameOnCard;
	}

	public String getAtmPin() {
		return atmPin;
	}

	public void setAtmPin(String atmPin) {
		this.atmPin = atmPin;
	}
	
	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public String getCardType() {
			return cardType;
	}

	public void setCardType(String cardType) {
			this.cardType = cardType;
	}
	
	public String getExpiryMonth() {
		return expiryMonth;
	}

	public void setExpiryMonth(String expiryMonth) {
		this.expiryMonth = expiryMonth;
	}

	public String getExpiryYear() {
		return expiryYear;
	}

	public void setExpiryYear(String expiryYear) {
		this.expiryYear = expiryYear;
	}
	
	 public UsersDetail getUsersDetail() {
			return usersDetail;
	}

	public void setUsersDetail(UsersDetail usersDetail) {
			this.usersDetail = usersDetail;
	}


    
}
