package edu.poly.sj5.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.sj5.model.Product;
import edu.poly.sj5.repository.IProductRepository;
import edu.poly.sj5.service.ICartService;
import edu.poly.sj5.service.IProductService;
import edu.poly.sj5.utility.CommonConst;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private IProductService productService;
	
	@Autowired
	private IProductRepository repository;
	
	@Autowired
	private ICartService cartService;
	
	@Autowired
	private HttpServletRequest request;
	
	@GetMapping
	public String getAll(Model model, @RequestParam(name = "pageNumber", defaultValue="0") int pageNumber) {
		Page<Product> productPage = productService
				.getByPage(pageNumber, CommonConst.PAGE_SIZE);
		model.addAttribute("page", productPage);
		List<Product> products = productService.findAll();
		int sumProduct = products.size();
		model.addAttribute("products", products);
		model.addAttribute("product", new Product());
		model.addAttribute("sumProduct", sumProduct);
		return "product/index";
	}
	
	@GetMapping("/crud")
	public String selectAll(Model model, @RequestParam(name = "pageNumber", defaultValue="0") int pageNumber) {
		Page<Product> productPage = productService
				.getByPage(pageNumber, CommonConst.PAGE_SIZE - 1);
		model.addAttribute("page", productPage);
		List<Product> products = productService.findAll();
		int sumProduct = products.size();
		model.addAttribute("products", products);
		model.addAttribute("product", new Product());
		model.addAttribute("sumProduct", sumProduct);
		return "product/list";
	}
	
	@PostMapping("/new")
	public String newProduct(Model model, @ModelAttribute("product") Product product) {
		HttpSession session = request.getSession();
		productService.newProduct(product);
		session.setAttribute("message", "Thêm mới thành công");
		return "redirect:/product/crud";
	}
	
	@GetMapping("/{id}")
	public String getProduct(Model model, @PathVariable Integer id) {
		Product product = productService.getProduct(id);
		model.addAttribute("product", product);
		return "product/detail";
	}
	
	@PostMapping("/update")
	public String updateProduct(Model model, @ModelAttribute("product") Product product) {
		HttpSession session = request.getSession();
		Integer id = product.getProductId();
		Product pro = productService.getProduct(id);
		String img = pro.getProductImg();
		if (product.getProductImg().equals("")) {
			product.setProductImg(img);
		}
		productService.updateProduct(product);
		this.cartService.updatePrice(id);
		session.setAttribute("message", "Cập nhật thành công");
		return "redirect:/product/crud";
	}
	
	@GetMapping("/delete/{id}")
	public String deleteProduct(Model model, @PathVariable Integer id) {
		HttpSession session = request.getSession();
		productService.deleteProduct(id);
		session.setAttribute("message", "Xóa thành công");
		return "redirect:/product/crud";
	}
	
//	@PostMapping("/newProductDetail/{id}")
//	public String newProductDetail(Model model, @ModelAttribute("productDetail") ProductDetail productDetail, @PathVariable Integer id) {
//		HttpSession session = request.getSession();
//		Product product = productService.getProduct(id);
//		productDetail.setProduct(product);
//		productService.newProductDetail(productDetail);
//		session.setAttribute("message", "Thêm chi tiết sản phẩm thành công");
//		return "redirect:/product/crud";
//	}
	
	@GetMapping("/name")
	public String getByName(Model model, @ModelAttribute("product") Product product){
		HttpSession session = request.getSession();
		if(product.getProductName()=="") {
			return "redirect:/product";
		}
		List<Product> products = productService.findByName(product.getProductName());
		if (products.isEmpty()) {
			session.setAttribute("errorSearch", "Không tìm thấy nội dung bạn yêu cầu");
			session.setAttribute("errorSearch2", "Không tìm thấy "+'"'+product.getProductName()+'"'+". Vui lòng kiểm tra chính tả, sử dụng các từ tổng quát hơn và thử lại!");
		} else {
			session.setAttribute("messageSearch", "Kết quả tìm kiếm cho "+'"'+product.getProductName()+'"');
		}
		int sumProduct = products.size();
		model.addAttribute("products", products);
		model.addAttribute("product", new Product());
		model.addAttribute("sumProduct", sumProduct);
		return "product/index";
	}
	
	@GetMapping("/nameReturnList")
	public String getByNameReturnList(Model model, @ModelAttribute("product") Product product){
		HttpSession session = request.getSession();
		if(product.getProductName()=="") {
			return "redirect:/product/crud";
		}
		List<Product> products = productService.findByName(product.getProductName());
		if (products.isEmpty()) {
			session.setAttribute("errorSearch", "Không tìm thấy nội dung bạn yêu cầu");
			session.setAttribute("errorSearch2", "Không tìm thấy "+'"'+product.getProductName()+'"'+". Vui lòng kiểm tra chính tả, sử dụng các từ tổng quát hơn và thử lại!");
		} else {
			session.setAttribute("messageSearch", "Kết quả tìm kiếm cho "+'"'+product.getProductName()+'"');
		}
		int sumProduct = products.size();
		model.addAttribute("products", products);
		model.addAttribute("product", new Product());
		model.addAttribute("sumProduct", sumProduct);
		return "product/list";
	}

}
