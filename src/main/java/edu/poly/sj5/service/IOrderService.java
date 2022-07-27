package edu.poly.sj5.service;

import java.util.List;

import edu.poly.sj5.model.OrderSD;


public interface IOrderService {
	OrderSD save(OrderSD dto);
    List<OrderSD> order();
//    Order delete(Integer id);
//    List<Order> getsatus(Integer status);
//    Order changesatus(Order o);
}
