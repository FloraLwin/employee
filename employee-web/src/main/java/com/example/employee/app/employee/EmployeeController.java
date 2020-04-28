package com.example.employee.app.employee;

import java.time.LocalDate;

import javax.inject.Inject;

import org.dozer.Mapper;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.employee.domain.model.Employee;
import com.example.employee.domain.service.employee.EmployeeService;

@Controller
@RequestMapping("employee")
public class EmployeeController {

	@Inject
	EmployeeService empservice;

	@Inject
	Mapper beanMapper;

	@ModelAttribute
	public EmployeeForm setUpForm() {
		return new EmployeeForm();
	}

	@RequestMapping(value = "create", method = { RequestMethod.GET, RequestMethod.POST })
	public String createForm() {
		return "employee/register";
	}

	@RequestMapping(value = "create", method = RequestMethod.POST, params = "redo")
	public String createRedo(EmployeeForm form) {
		return "employee/register";
	}

	@RequestMapping(value = "confirm", method = RequestMethod.POST)
	public String createConfirm(@Validated EmployeeForm form, BindingResult result) {
		if (result.hasErrors()) {
			return "employee/register";
		}
		return "employee/confirm";
	}

	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String create(@Validated EmployeeForm form, BindingResult result) {
		if (result.hasErrors()) {
			return createRedo(form);
		}
		Employee employee = beanMapper.map(form, Employee.class);

		String birthDate = LocalDate.parse(form.getBirthDate()).toString();
		String joinDate = LocalDate.parse(form.getJoinDate()).toString();

		employee.setBirthDate(birthDate);
		employee.setJoinDate(joinDate);

		empservice.create(employee);

		return "redirect:/employee/register?complete";
	}

	@RequestMapping(value = "register", method = RequestMethod.GET, params = "complete")
	public String createComplete() {
		return "employee/complete";
	}
}
