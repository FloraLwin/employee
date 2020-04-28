package com.example.employee.domain.service.employee;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.example.employee.domain.model.Employee;
import com.example.employee.domain.model.Search;

public interface EmployeeService {

	void create(Employee employee);

	Page<Employee> findPage(Search search, Pageable pageable);

	Employee findById(String id);

	List<Employee> findByIds(String[] ids);

}
