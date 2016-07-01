package com.cloudcart.services;

import org.springframework.beans.factory.annotation.Autowired;

import com.cloudcart.dao.DataDao;
import com.cloudcart.model.Customer;
import com.cloudcart.model.Product;

public class DataServicesImpl implements DataServices {

	@Autowired
	DataDao datadao;

	@Override
	public Product getProductById(Long id) throws Exception {

		return datadao.getProductById(id);

	}

	@Override
	public boolean addCustomer(Customer customer) throws Exception {

		return datadao.addCustomer(customer);
	}

	@Override
	public Customer getCustomerProfile(String id) throws Exception {

		return datadao.getCustomerProfile(id);
	}

	@Override
	public Product getProducts(Long id) throws Exception {

		return datadao.getProducts(id);
	}

	@Override
	public Customer customerSignIn(String uname, String password) {

		Customer customer;
		try {
			customer = datadao.getCustomerSignIn(uname);
			if (customer != null && customer.getPassword().equals(password)) {
				return customer;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public boolean decreaseProduct(Long id) throws Exception {
		Product product = datadao.getProductById(id);
		if (product.getQuantity() <= 0) {
			return false;
		} else {
			datadao.decreaseProduct(id);
		}
		return true;
	}

}
