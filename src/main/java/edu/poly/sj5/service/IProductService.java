package edu.poly.sj5.service;

import java.util.List;

import org.springframework.data.domain.Page;

import edu.poly.sj5.model.Product;

public interface IProductService {
	Page<Product> getByPage(int pageNumber, int maxRecord);
	
	List<Product> findAll();
	
	Product newProduct(Product product);
	
//	ProductDetail newProductDetail(ProductDetail productDetail);
	
	Product getProduct(Integer id);
	
	Product updateProduct(Product product);
	
	Integer deleteProduct(Integer id);
	
	List<Product> findByName(String name);

}
