package com.main.service;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.main.entity.Employee;
import com.main.repository.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepo;

	@Override
	public String registerEmployee(Employee employee) {
		String idVal = employeeRepo.save(employee).getId();
		return "Employee Register having with id:: " + idVal;
	}

	@Override
	public List<Employee> getEmployeeDetails() {
		return employeeRepo.findAll();
	}

	@Override
	public Optional<Employee> getEmployeeById(String id) {
		return employeeRepo.findById(id);
	}

	@Override
	public Optional<Employee> updateEmployeeId(String id, Employee updatedEmp) {
		return employeeRepo.findById(id).map(emp -> {
			emp.setName(updatedEmp.getName());
			emp.setEmail(updatedEmp.getEmail());
			emp.setDepartment(updatedEmp.getDepartment());
			emp.setSalary(updatedEmp.getSalary());
			return employeeRepo.save(emp);
		});
	}

	@Override
	public Optional<Employee> deleteEmp(String id) {
		Optional<Employee> emp = employeeRepo.findById(id);
		emp.ifPresent(p -> employeeRepo.deleteById(id));
		return emp;
	}

	public List<Employee> searchEmployeeDetails(String name) {
	    return employeeRepo.findByNameContainingIgnoreCase(name);
	}


	

}
