package edu.poly.sj5.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.sj5.model.OrderSD;

public interface IOrderRepository extends JpaRepository<OrderSD, Integer> {

}
