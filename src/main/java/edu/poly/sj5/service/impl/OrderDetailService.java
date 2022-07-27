package edu.poly.sj5.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.poly.sj5.model.OrderDetail;
import edu.poly.sj5.repository.IOrderDetailRepository;
import edu.poly.sj5.service.IOrderDetailService;

@Service
public class OrderDetailService implements IOrderDetailService{
	@Autowired
	private IOrderDetailRepository repository;
	
	@Override
	public OrderDetail save(OrderDetail odt) {
		return repository.save(odt);
	}

}
