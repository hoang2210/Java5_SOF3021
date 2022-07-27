package edu.poly.sj5.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.sj5.model.OrderDetail;
import edu.poly.sj5.model.OrderSD;
import edu.poly.sj5.model.Product;
import edu.poly.sj5.repository.IOrderDetailRepository;
import edu.poly.sj5.service.ICartService;
import edu.poly.sj5.service.IOrderService;
import edu.poly.sj5.service.IProductService;

@Controller
@RequestMapping("/shop")
public class ShopController {
	
	@Autowired
	private ICartService cartService;
	
	@Autowired
	private IProductService productService;
	
	@Autowired
	private IOrderService orderService;
	
	@Autowired
	private IOrderDetailRepository orderDetailRepository;
	
	@Autowired
	private HttpServletRequest request;
	
	@GetMapping("/cart")
	public String getAll(Model model) {		
		model.addAttribute("carts",this.cartService.getCart());
    	model.addAttribute("total",this.cartService.getTotal());
    	return "shop/cart";
	}
	
	@GetMapping("/checkout")
	public String checkOut(Model model) {		
		model.addAttribute("carts",this.cartService.getCart());
    	model.addAttribute("total",this.cartService.getTotal());
    	return "shop/checkout";
	}
	
	@GetMapping("/cart/{id}")
    public String addToCart(Model model,@PathVariable("id") Integer id) {
    	this.cartService.addToCart(id, 1);
    	model.addAttribute("carts",this.cartService.getCart());
    	
    	return "redirect:/shop/cart";
    }
	
	@GetMapping("/addManyQuantity/{id}")
    public String addManyQuantityToCart(Model model,@PathVariable("id") Integer id,@RequestParam("qty") Integer qty) {
    	Product product = productService.getProduct(id);
		if (qty > product.getQuantity()) {
			request.getSession().setAttribute("Ealert", "Số lượng bạn chọn đã vượt mức tối đa của sản phẩm này");
			return "redirect:/product/"+id;
		}
		if (qty < 1) {
			request.getSession().setAttribute("Ealert", "Số lượng bạn chọn phải đạt mức tối thiểu 1 sản phẩm");
			return "redirect:/product/"+id;
		}
    	
		this.cartService.addToCart(id, qty);
    	model.addAttribute("carts",this.cartService.getCart());
    	
    	return "redirect:/shop/cart";
    }
	
	@GetMapping("/changeQuantity/{id}")
    public String changeQuantity(Model model,@PathVariable("id") Integer id,@RequestParam("quantity") Integer quantity) {
		if(quantity == 0) {
			this.cartService.removeProduct(id);
			return "redirect:/shop/cart";
		}
    	this.cartService.changeProductQuantity(id, quantity);
    	return "redirect:/shop/cart";
    }
	
	
	@GetMapping("/deleteCart/{id}")
	public String deleteCart(Model model,@PathVariable("id") Integer id) {
	    this.cartService.removeProduct(id);
	    return "redirect:/shop/cart";
	}
	
	@GetMapping("/deletesCart")
	public String deletesCart(Model model) {
	    this.cartService.removeProducts();
	    return "redirect:/shop/cart";
	}
	
	@GetMapping("/pay")
	    public String thanhToan(Model model, @RequestParam("number") String number) {
		if (number.isEmpty()) {
			number = "0843442263";
		}
	    if(!this.cartService.checkCartNull()) {
	    	this.cartService.pay(number);
	    }
	    
	    List<OrderSD> list = orderService.order();
	    OrderSD order = list.get(list.size()-1);
	    List<OrderDetail> orderDetails = orderDetailRepository.getByOrderId(order);
	    
	    model.addAttribute("order", order);
	    model.addAttribute("orderDetails", orderDetails);
	    
	    return "shop/confirmation";
	  }
	 
	@GetMapping("/order")
	public String getAllOrder(Model model) {		
		model.addAttribute("orders",this.orderService.order());
    	//model.addAttribute("orderDetails", new OrderDetail());
    	return "shop/order";
	}
	
	@GetMapping("/order/{order}")
	public String getOrderDetailByOrder(Model model,@PathVariable("order") OrderSD order) {
		model.addAttribute("orders",this.orderService.order());
    	model.addAttribute("orderDetails", orderDetailRepository.getByOrderId(order));
    	model.addAttribute("total", order.getTotalMoney());
    	model.addAttribute("orderID", order.getOrderId());
    	return "shop/order";
	}
	
}
