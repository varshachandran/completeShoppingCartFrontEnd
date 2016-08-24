package com.niit.shoppingcartfrontend.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.util.FileUtil;
import com.niit.shoppingcartfrontend.util.Util;

@Controller
public class ProductController {

	Logger log = LoggerFactory.getLogger(ProductController.class);

	@Autowired(required = true)
	private ProductDAO productDAO;

	@Autowired(required = true)
	private CategoryDAO categoryDAO;

	@Autowired(required = true)
	private SupplierDAO supplierDAO;

	@Autowired
	private Product product;

	private String path = "C:\\images\\";

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String listProducts(Model model) {
		log.debug("Start: method listProducts");
		model.addAttribute("isIsadminClickedProduct", "true");
		model.addAttribute("product", product);
		 model.addAttribute("category", new Category());
		 model.addAttribute("supplier", new Supplier());
		 model.addAttribute("categoryList", categoryDAO.list());
		 model.addAttribute("supplierList", supplierDAO.list());
		model.addAttribute("productList", productDAO.list());
		log.debug("End: method listProducts");
		return "home";
	}

	// For add and update product both
	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product) {
		log.debug("Start: method addProduct");

		 Category category = categoryDAO.getByName(product.getCategory().getName());
		 categoryDAO.saveOrUpdate(category);
		
		 Supplier supplier = supplierDAO.getByName(product.getSupplier().getName());
		 supplierDAO.saveOrUpdate(supplier);
		
		 product.setCategory(category);
		 product.setSupplier(supplier);
		
		 product.setCategory_id(category.getId());
		 product.setSupplier_id(supplier.getId());
		 String newID = Util.removeComma(product.getId());
		 product.setId(newID);
		productDAO.saveOrUpdate(product);

		 MultipartFile file = product.getImage();
		
		 FileUtil.upload(path, file, product.getId() + ".jpg");

		log.debug("End: method addProduct");
		return "redirect:/products";

	}

	// to delete product
	@RequestMapping("product/remove/{id}")
	public String deleteProduct(@PathVariable("id") String id, ModelMap model) {
		log.debug("Start: method removeProduct");

		try {
			productDAO.delete(id);
			model.addAttribute("message", "Successfully deleted");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		log.debug("End: method removeProduct");
		return "redirect:/products";
	}

	// to edit product

	@RequestMapping(value = "product/edit/{id}")
	public String editCategory(@PathVariable("id") String id, ModelMap model) {
		log.debug("Start: method editProduct");
		System.out.println("editProduct");

		product = productDAO.get(id);
		model.addAttribute("product", product);
		model.addAttribute("productList", productDAO.list());
		model.addAttribute("categoryList", categoryDAO.list());
		model.addAttribute("supplierList", supplierDAO.list());
		log.debug("End: method editProduct");

		return "redirect:/products";
	}
	
	@RequestMapping(value = "product/get/{id}")
	public String getSelectedProduct(@PathVariable("id") String id, Model model,
			RedirectAttributes redirectAttributes) {
		redirectAttributes.addFlashAttribute("selectedProduct", productDAO.get(id));
		return "redirect:/backToHome";

	}

	@RequestMapping(value = "/backToHome", method = RequestMethod.GET)
	public String backToHome(@ModelAttribute("selectedProduct") 
	        final Object selectedProduct, final Model model) {

		model.addAttribute("selectedProduct", selectedProduct);
		//model.addAttribute("categoryList", this.categoryDAO.list());

		return "/home";
	}

	/*@RequestMapping(value = "product/get/{id}")
	public String getSelectedProduct(@PathVariable("id") String id, Model model) {
		model.addAttribute("selectedProduct", this.productDAO.get(id));
		model.addAttribute("categoryList", this.categoryDAO.list());

		return "home";

	}*/

}