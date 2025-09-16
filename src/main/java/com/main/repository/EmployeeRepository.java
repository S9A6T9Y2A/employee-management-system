package com.main.repository;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import com.main.entity.Employee;

public interface EmployeeRepository extends MongoRepository<Employee, String> {
	public List<Employee> findByNameContainingIgnoreCase(String name);
}
