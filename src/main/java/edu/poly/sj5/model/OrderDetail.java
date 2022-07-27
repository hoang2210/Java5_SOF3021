package edu.poly.sj5.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "orderdetail")
public class OrderDetail {

	@Id
	@Column(name="id", nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@ManyToOne
	@JoinColumn(name = "orderid")
	private OrderSD order;
	
	@ManyToOne
	@JoinColumn(name = "productid")
	private Product product;
	
	@Column(name="purchasedquantity", nullable = false)
	private Integer purchasedQuantity;
	
	@Column(name="purchasedmoney", nullable = false)
	private BigDecimal purchasedMoney;

	public OrderSD getOrder() {
		return order;
	}

	public void setOrder(OrderSD order) {
		this.order = order;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Integer getPurchasedQuantity() {
		return purchasedQuantity;
	}

	public void setPurchasedQuantity(Integer purchasedQuantity) {
		this.purchasedQuantity = purchasedQuantity;
	}

	public BigDecimal getPurchasedMoney() {
		return purchasedMoney;
	}

	public void setPurchasedMoney(BigDecimal purchasedMoney) {
		this.purchasedMoney = purchasedMoney;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
}
