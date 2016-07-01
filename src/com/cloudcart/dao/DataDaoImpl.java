package com.cloudcart.dao;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import com.cloudcart.model.Customer;
import com.cloudcart.model.Product;

public class DataDaoImpl implements DataDao {

	@Autowired
	SessionFactory sessionfactory;

	Session session = null;
	Transaction tx = null;

	@Override
	public Product getProductById(Long id) throws Exception {

		session = sessionfactory.openSession();
		Product product = (Product) session.get(Product.class, new Long(id));
		tx = session.getTransaction();
		session.beginTransaction();
		tx.commit();
		return product;

	}

	@Override
	public boolean addCustomer(Customer customer) throws Exception {

		session = sessionfactory.openSession();
		tx = session.beginTransaction();
		session.save(customer);
		tx.commit();
		session.close();

		return false;
	}

	@Override
	public Customer getCustomerProfile(String id) throws Exception {

		session = sessionfactory.openSession();
		Customer customer = (Customer) session.get(Customer.class, new String(id));
		tx = session.getTransaction();
		session.beginTransaction();
		tx.commit();

		return customer;
	}

	public Customer getCustomerSignIn(String uname) throws Exception {

		session = sessionfactory.openSession();
		Customer customer = (Customer) session.get(Customer.class, new String(uname));
		tx = session.getTransaction();
		session.beginTransaction();
		tx.commit();

		return customer;
	}

	@Override
	public Product getProducts(Long id) throws Exception {

		session = sessionfactory.openSession();
		Product product = (Product) session.get(Product.class, new Long(id));
		tx = session.getTransaction();
		session.beginTransaction();
		tx.commit();

		return product;
	}

	@Override
	public boolean decreaseProduct(Long id) throws Exception {

		session = sessionfactory.openSession();
		tx = session.beginTransaction();
		
		try {
			Criteria criteria = session.createCriteria(Product.class);
			criteria.add(Restrictions.eq("id", id));
			Product p = (Product) criteria.uniqueResult();
			if (p.getQuantity() <= 0) {
				return false;
			}
			p.setQuantity(p.getQuantity() - 1);
			session.saveOrUpdate(p);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			tx.commit();
			session.close();
		}
		return true;
	}

}
