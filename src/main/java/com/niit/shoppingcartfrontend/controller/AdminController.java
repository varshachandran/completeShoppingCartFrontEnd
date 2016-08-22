package com.niit.shoppingcartfrontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;

@Controller
public class AdminController {

	@Autowired
	private Category category;

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private Product product;

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private Supplier supplier;

	@Autowired
	private SupplierDAO supplierDAO;

	@RequestMapping("/manageCategories")
	public ModelAndView category() {

		ModelAndView mv = new ModelAndView("/home");
		mv.addObject("category", category);
		mv.addObject("isIsadminClickedCategory", "true");
		mv.addObject("categoryList", categoryDAO.list());
		return mv;
	}

	@RequestMapping("/manageProducts")
	public ModelAndView product() {

		ModelAndView mv = new ModelAndView("/home");
		mv.addObject("product", product);
		mv.addObject("isIsadminClickedProduct", "true");
		mv.addObject("productList", productDAO.list());
		return mv;
	}

	@RequestMapping("/manageSuppliers")
	public ModelAndView supplier() {

		ModelAndView mv = new ModelAndView("/home");
		mv.addObject("supplier", supplier);
		mv.addObject("isIsadminClickedSupplier", "True");
		mv.addObject("supplierList", supplierDAO.list());
		return mv;
	}

}
