package edu.poly.sj5.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import edu.poly.sj5.model.Product;
import edu.poly.sj5.repository.IProductRepository;
import edu.poly.sj5.service.IProductService;

@Service
public class ProductService implements IProductService {
	
	@Autowired
	private IProductRepository productRepository;
	
	@Override
	public List<Product> findAll(){
		return productRepository.findAll();
	}
	
	@Override
	public Product newProduct(Product product) {
		product.setProductId(null); //Chắc chắn thêm mới
		return productRepository.save(product);
	}
	
	
	public Page<Product> getByPage(int pageNumber, int maxRecord) {
		Pageable pageable = PageRequest.of(pageNumber, maxRecord);
		Page<Product> page = productRepository.findAll(pageable);
		return page;
	}

	@Override
	public Product getProduct(Integer id) {
		Optional<Product> opt = productRepository.findById(id);
		if (opt.isPresent()) {
			return opt.get();
		}
		return null; //Khong co du lieu
	}

	@Override
	public Product updateProduct(Product product) {
		Integer id = product.getProductId();
		boolean isProductExisted =  productRepository.existsById(id);
		if (isProductExisted) {
			return productRepository.save(product);
		}
		return null; //Không tồn tại sản phẩm
	}

	@Override
	public Integer deleteProduct(Integer id) {
		boolean isProductExisted =  productRepository.existsById(id);
		if (isProductExisted) {
			productRepository.deleteById(id);
			return id; //Thành công
		}
		return null; //Không tồn tại sản phẩm
	}

//	@Override
//	public ProductDetail newProductDetail(ProductDetail productDetail) {
//		productDetail.setId(null); //Chắc chắn thêm mới
//		return productDetailRepository.save(productDetail);
//	}

	@Override
	public List<Product> findByName(String name) {
		if(name==null) {
			return productRepository.findAll();
		}else {
			return productRepository.findByName("%"+name+"%");
		}
	}

}
