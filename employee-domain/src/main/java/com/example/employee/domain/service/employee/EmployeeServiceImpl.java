package com.example.employee.domain.service.employee;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.inject.Inject;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.employee.domain.model.Employee;
import com.example.employee.domain.model.Search;
import com.example.employee.domain.repository.employee.EmployeeRepository;

@Transactional
@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Inject
	EmployeeRepository employeeRepository;

	@Override
	public void create(Employee employee) {
		// TODO Auto-generated method stub
		employeeRepository.create(employee);
	}

	@Override
	public Page<Employee> findPage(Search search, Pageable pageable) {
		Long total = employeeRepository.countBySearchList(search);
		List<Employee> content;
		if (total > 0) {
			content = employeeRepository.findPage(search, pageable);
		} else {
			content = Collections.emptyList();
		}
		Page<Employee> page = new PageImpl<>(content, pageable, total);
		return page;
	}

	@Override
	public Employee findById(String id) {
		return employeeRepository.findById(id);
	}

	@Override
	public List<Employee> findByIds(String[] ids) {
		List<Employee> employees = new ArrayList<>();
		for (String id : ids) {
			employees.add(employeeRepository.findById(id));
		}
		return employees;
	}

}
