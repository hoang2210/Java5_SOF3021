package edu.poly.sj5.service.impl;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.poly.sj5.model.OrderSD;
import edu.poly.sj5.repository.IOrderDetailRepository;
import edu.poly.sj5.repository.IOrderRepository;
import edu.poly.sj5.repository.IProductRepository;
import edu.poly.sj5.service.IOrderService;

@Service
public class OrderService implements IOrderService {
	@Autowired
	private HttpServletRequest request;
	@Autowired
	private IOrderRepository repository;
	@Autowired
	private IOrderDetailRepository detailRepository;
	@Autowired
	private IProductRepository proRepository;

	@Override
	public OrderSD save(OrderSD dto) {
		dto.setOrderId(null);	
		return repository.save(dto);
	}

	@Override
	public List<OrderSD> order() {
		return repository.findAll();
	}

}
