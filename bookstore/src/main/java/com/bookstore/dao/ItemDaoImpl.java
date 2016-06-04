package com.bookstore.dao;

import com.bookstore.dao.ItemDao;
import com.bookstore.model.Item;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;



@Repository
@Transactional
public class ItemDaoImpl implements ItemDao {

    @Autowired
    private SessionFactory sessionFactory;

    public Item getItemById (int id) {
        Session session = sessionFactory.getCurrentSession();
        Item item = (Item) session.get(Item.class, id);
        session.flush();

        return item;
    }

    public List<Item> getItemList() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Item");
        List<Item> itemList = query.list();
        session.flush();

        return itemList;
    }

    public void addItem (Item item) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(item);
        session.flush();
    }

    public void editItem (Item item) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(item);
        session.flush();
    }

    public void deleteItem (Item item) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(item);
        session.flush();
    }
}
