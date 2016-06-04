package com.bookstore.dao;

import com.bookstore.model.Item;

import java.util.List;


public interface ItemDao {

    List<Item> getItemList();

    Item getItemById(int id);

    void addItem(Item item);

    void editItem(Item item);

    void deleteItem(Item item);
}
