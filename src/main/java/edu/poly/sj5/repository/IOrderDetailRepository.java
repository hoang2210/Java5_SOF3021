package edu.poly.sj5.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import edu.poly.sj5.model.OrderDetail;
import edu.poly.sj5.model.OrderSD;

public interface IOrderDetailRepository extends JpaRepository<OrderDetail, Integer> {
	@Query("Select o from OrderDetail o where o.order = :order")
	List<OrderDetail> getByOrderId(@Param("order") OrderSD order);
}
