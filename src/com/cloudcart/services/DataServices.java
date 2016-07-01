package com.cloudcart.services;

import com.cloudcart.model.Customer;
import com.cloudcart.model.Product;

public interface DataServices {

	public Product getProductById(Long id) throws Exception;

	public boolean addCustomer(Customer customer) throws Exception;

	public Customer getCustomerProfile(String id) throws Exception;

	public Product getProducts(Long id) throws Exception;

	public Customer customerSignIn(String uname, String password) throws Exception;

	public boolean decreaseProduct(Long id) throws Exception;

}
