package edu.poly.sj5.model;

import java.math.BigDecimal;

import lombok.Data;
@Data
public class Cart {

	// Key: ma san pham, Value: so luong san pham
	private Product product;
	private BigDecimal price;
	private int quantity;
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
}
