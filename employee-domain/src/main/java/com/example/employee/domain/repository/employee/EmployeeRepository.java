package com.example.employee.domain.repository.employee;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Pageable;

import com.example.employee.domain.model.Employee;
import com.example.employee.domain.model.Search;

public interface EmployeeRepository {

	void create(Employee employee);

	List<Employee> findPage(@Param("criteria") Search search, @Param("pageable") Pageable pageable);

	Long countBySearchList(@Param("criteria") Search employeeSearch);

	Employee findById(String id);
}
