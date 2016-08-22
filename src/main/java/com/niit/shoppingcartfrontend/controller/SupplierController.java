package com.niit.shoppingcartfrontend.controller;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Supplier;
//import com.niit.shoppingcartfrontend.util.Util;


@Controller
public class SupplierController {
	
	
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	@Autowired
	private Supplier supplier;

	
	
		@RequestMapping(value="/supplier",method=RequestMethod.GET)
		public String supplierList(Model model) 
		{
			model.addAttribute("isIsadminClickedSupplier","true");
			model.addAttribute("supplier", supplier);
			model.addAttribute("supplierList", this.supplierDAO.list());
			return "home";
		}
		
		@RequestMapping(value="/supplier/add",method=RequestMethod.POST)
		public String addSupplier(@ModelAttribute("supplier") Supplier supplier){
			//String newID = Util.removeComma(supplier.getId());
			//supplier.setId(newID);
			supplierDAO.saveOrUpdate(supplier);
			return "redirect:/supplier";
			
		}
		
		//TO DELETE SUPPLIER
				@RequestMapping("supplier/remove/{id}")
				public String deleteSupplier (@PathVariable("id") String id, Model model)
				{
					try{
					supplierDAO.delete(id);
					model.addAttribute("message","successfully deleted");
					}
					catch (Exception e)
					{
						model.addAttribute("message",e.getMessage());
						e.printStackTrace();
					}
					
					return "redirect:/supplier";
				}
				
		
		//TO EDIT SUPPLIER
		@RequestMapping(value="supplier/edit/{id}")
		public String editSupplier(@PathVariable("id") String id, ModelMap model)
		{
			supplier=supplierDAO.get(id);
			model.addAttribute("supplier",supplier);
			model.addAttribute("supplierList",supplierDAO.list());
			return "redirect:/supplier";
		}
		
		
		
		
		
	
}


	