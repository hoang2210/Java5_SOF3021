package edu.poly.sj5.service.impl;


import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import edu.poly.sj5.model.Cart;
import edu.poly.sj5.model.OrderSD;
import edu.poly.sj5.model.OrderDetail;
import edu.poly.sj5.model.Product;
import edu.poly.sj5.repository.IOrderDetailRepository;
import edu.poly.sj5.repository.IProductRepository;
import edu.poly.sj5.service.ICartService;
import edu.poly.sj5.service.IOrderDetailService;
import edu.poly.sj5.service.IOrderService;
import edu.poly.sj5.service.IProductService;

@SessionScope
@Service
public class CartService implements ICartService {
	Map<Integer, Cart> carts = new HashMap<>();

	@Autowired
	private IProductRepository repository;

	@Autowired
	private HttpServletRequest request;
	
	@Autowired
	private IOrderService orderService;
	
	@Autowired
	private IOrderDetailRepository orderDetailRepository;


	@Override
	public void addToCart(int productId, int quantity) {		
		int currentQuantity = 0;
		// Neu san pham chua co trong gio hang
		if (carts.containsKey(productId)) {
			// lay so luong hien co ra

			currentQuantity = carts.get(productId).getQuantity();

		}
		// cong don
		Cart cart = new Cart();
		Optional<Product> product = this.repository.findById(productId);
		cart.setPrice(product.get().getPrice());
		cart.setProduct(product.get());
		int updatedQuantity = currentQuantity + quantity;
		cart.setQuantity(updatedQuantity);
		carts.put(productId, cart);
		
	}

	@Override
	public void changeProductQuantity(int productId, int quantity) {
		Cart cart = carts.get(productId);
		Product pro =  cart.getProduct();
		if(quantity > pro.getQuantity()) {
			quantity = pro.getQuantity();
			request.getSession().setAttribute("Ealert", "Số lượng bạn chọn đã đạt mức tối đa của sản phẩm này");
		}
		if(quantity < 0) {
			quantity = 1;
			request.getSession().setAttribute("Ealert", "Số lượng bạn chọn phải là số nguyên dương");
		}
		cart.setQuantity(quantity);
		carts.put(productId, cart);
	}

	@Override
	public void removeProduct(int productId) {
	
		carts.remove(productId);
	}

	@Override
	public void removeProducts() {
		carts.clear();;
	}

	@Override
	public void pay(String number) {
		List<Product> products = new ArrayList<Product>();
		List<OrderDetail> orderDetails = new ArrayList<OrderDetail>();
		OrderSD order = new OrderSD();
		order.setOrderId(null);
		order.setCreatedDate(new Date());
		order.setCustomerNumber(number);
		order.setTotalMoney(getTotal());
		OrderSD order1 =  this.orderService.save(order);
		
		for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {			
			Cart value = entry.getValue();
			Product product = value.getProduct();
			product.setQuantity(product.getQuantity() - value.getQuantity());
			products.add(product);
			
			
			BigDecimal qty = new BigDecimal(value.getQuantity());			
			BigDecimal bigDecimal = new BigDecimal((value.getPrice().multiply(qty)) +"");
			
			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setOrder(order1);
			orderDetail.setProduct(product);			
			orderDetail.setPurchasedMoney(bigDecimal);
			orderDetail.setPurchasedQuantity(value.getQuantity());
			orderDetails.add(orderDetail);
			
		}
		this.orderDetailRepository.saveAllAndFlush(orderDetails);
		this.repository.saveAllAndFlush(products);
		request.getSession().setAttribute("alert", "Thanh toán thành công");
		this.removeProducts();

	}

	@Override
	public boolean checkCartNull() {
		System.out.println(carts.isEmpty());
		if (carts.isEmpty()) {
			request.getSession().setAttribute("alert", "Cart không có sản phẩm nào");
			return true;
		}
		return false;
	}

	@Override
	public Map<Integer, Cart> getCart() {
		
		return carts;
	}

	@Override
	public BigDecimal getTotal() {
		BigDecimal total = new BigDecimal("0");
		for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
			Cart value = entry.getValue();
			BigDecimal qty = new BigDecimal(value.getQuantity());
		
			BigDecimal bigDecimal = new BigDecimal((value.getPrice().multiply(qty)) +"");
			total =  total.add(bigDecimal);	
		}
		return total;
	}

	@Override
	public void updatePrice(int productId) {
		this.addToCart(productId, 1);
		Cart cart = carts.get(productId);		
		int quantity = cart.getQuantity() - 1;
		if (quantity == 0) {
			this.removeProduct(productId);
		}else {
			this.changeProductQuantity(productId, quantity);
		}
				
	}



}
