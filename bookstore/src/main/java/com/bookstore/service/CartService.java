package com.bookstore.service;

import com.bookstore.model.Cart;


public interface CartService {

    Cart getCartById (int cartId);

    void update(Cart cart);
}
