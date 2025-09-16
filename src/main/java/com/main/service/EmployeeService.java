package com.main.service;

import java.util.List;
import java.util.Optional;

import com.main.entity.Employee;

public interface EmployeeService {

	public String registerEmployee(Employee employee);

	public List<Employee> getEmployeeDetails();

	public Optional<Employee> getEmployeeById(String id);

	public Optional<Employee> updateEmployeeId(String id, Employee updatedEmp);

	public Optional<Employee> deleteEmp(String id);

}
