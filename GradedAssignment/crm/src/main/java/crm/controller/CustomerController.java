package crm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import crm.entity.Customer;
import crm.service.CustomerService;

@Controller
public class CustomerController {
	@Autowired
private CustomerService customerService;
	
	@RequestMapping("/")
	public String customerlist() {
		return "customerlist";
	}

	@GetMapping("list")
	public String listBooks(Model theModel) {

		System.out.println("request recieved");
		List<Customer> theCustomers = customerService.findAll();
		theModel.addAttribute("customer", theCustomers);
		return "customerlist";
	}

	@GetMapping("showFormForAdd")
	public String showFormForAdd(Model theModel) {
		Customer theCustomers = new Customer();
		theModel.addAttribute("customer", theCustomers);
		return "customerform";
}

	@GetMapping("showFormForUpdate")
	public String showFormForUpdate(@RequestParam("customerId") int theId, Model theModel) {
		Customer theCustomers = customerService.findById(theId);
		theModel.addAttribute("customer", theCustomers);
		return "customerform";
	}

	@PostMapping("save")
	public String saveCustomer(Model model, @ModelAttribute("customer") Customer customer) {
		System.out.println(customer);
		customerService.save(customer);
		return "redirect:/list";
	}
	@RequestMapping("delete")
	public String delete(@RequestParam("customerId") int theId) {
		customerService.deleteById(theId);
		return "redirect:/list";

	}

}




