package com.cloudcart.dao;

import com.cloudcart.model.Customer;
import com.cloudcart.model.Product;

public interface DataDao {

	public Product getProductById(Long id) throws Exception;

	public boolean addCustomer(Customer customer) throws Exception;

	public Customer getCustomerProfile(String id) throws Exception;

	public Product getProducts(Long id) throws Exception;

	public Customer getCustomerSignIn(String uname) throws Exception;

	public boolean decreaseProduct(Long id) throws Exception;
	
}
