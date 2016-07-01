package com.cloudcart.beans;

import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;

import com.cloudcart.model.Product;

@Component
@Scope(value = WebApplicationContext.SCOPE_SESSION, proxyMode = ScopedProxyMode.TARGET_CLASS)

public class Cart {

	private Map<Product, Integer> contents = new HashMap<>();
	//private Map<Product, Integer> productCounts = new HashMap<>();

	public Map<Product, Integer> getContents() {
		return contents;

	}

/*	public Map<Product, Integer> getProductCounts() {
		return productCounts;
	}*/
  
	public void addProducts(Product product, int count){
		if(contents.containsKey(product)){
			contents.put(product, contents.get(product)+count);
			}
		
		else {
			
			contents.put(product, count);
		}
		
		
	}
	
/*	public void addProducts(Product product) {

		if (contents.containsKey(product.getId())) {
			int x = contents.get(product.getId()) + 1;
			clearDuplicates(product.getId());
			productCounts.put(product, x);
			contents.put(product.getId(), x);
		} else {
			productCounts.put(product, 1);
			contents.put(product.getId(), 1);
		}

	}

	private void clearDuplicates(Long id) {
		for (Product product : productCounts.keySet()) {
			if (product.getId() == id) {
				productCounts.remove(product);
			}
		}
		}
		*/
	

	public void removeProducts(Product product) {

		contents.remove(product);

	}

	public void clearCart() {

		contents.clear();
	}

	@Override
	public String toString() {

		return contents.toString();
	}

	public double getTotalcost() {
		


		double totalcost = 0;
		for (Product product : contents.keySet()) {
			
			
			totalcost = (totalcost + product.getPrice());
		}

		return totalcost;

	}

	
}
