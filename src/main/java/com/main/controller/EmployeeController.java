package com.main.controller;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.main.entity.Employee;
import com.main.repository.EmployeeRepository;
import com.main.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService service;

	@Autowired
	private EmployeeRepository employeeRepo;

	@GetMapping("/")
	public String home() {
		return "home";
	}

	@GetMapping("/add")
	public String add() {
		return "addemp";
	}

	@PostMapping("/addstudent")
	public String insert(@ModelAttribute Employee employee, Model model) {
		String insertEmp = service.registerEmployee(employee);
		model.addAttribute("addEmployee", insertEmp);
		return "home";
	}

	@GetMapping("/display")
	public String display(Map<String, Object> map) {
		List<Employee> empList = service.getEmployeeDetails();
		map.put("EmployeeList", empList);
		return "displayemp";
	}

	@GetMapping("/search")
	public String searchEmployee(@RequestParam("name") String name, Model model) {
		List<Employee> list = employeeRepo.findByNameContainingIgnoreCase(name);
		model.addAttribute("EmployeeList", list);
		return "displayemp";
	}

	@GetMapping("/edit/{id}")
	public String getId(@PathVariable String id, Model model) {
		Employee emp = service.getEmployeeById(id).orElseThrow(() -> new RuntimeException("Employee Id Not Found"));
		model.addAttribute("updateId", emp);
		return "update";
	}

	@PostMapping("/updateEmployee")
	public String updateEmployee(@ModelAttribute Employee emp) {
		service.updateEmployeeId(emp.getId(), emp).orElseThrow(() -> new RuntimeException("Employee Faield"));
		return "redirect:display";
	}

	@GetMapping("/delete/{id}")
	public String delete(@PathVariable String id, Model model) {
		Optional<Employee> emp = service.deleteEmp(id);
		model.addAttribute("delete", emp);
		return "redirect:display";
	}

}
