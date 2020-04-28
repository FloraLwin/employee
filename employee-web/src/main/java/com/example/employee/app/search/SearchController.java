package com.example.employee.app.search;

import javax.inject.Inject;

import org.dozer.Mapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.employee.domain.model.Employee;
import com.example.employee.domain.model.Search;
import com.example.employee.domain.service.employee.EmployeeService;

@Controller
public class SearchController {

	@Inject
	private EmployeeService employeeService;

	@Inject
	private Mapper mapper;

	@ModelAttribute
	public SearchForm setUpForm() {
		return new SearchForm();
	}

	Logger log = LoggerFactory.getLogger(SearchController.class);

	@RequestMapping(value = "search", method = { RequestMethod.GET, RequestMethod.POST })
	public String searchForm(Model model) {
		model.addAttribute("searchForm", new SearchForm());
		return "employee/search";
	}

	@RequestMapping(value = "/employee/searching", method = { RequestMethod.POST, RequestMethod.GET })
	public String searching(@ModelAttribute SearchForm employeeSearchForm, @PageableDefault(size = 5) Pageable pageable,
			Model model) {
		Search employeeSearch = mapper.map(employeeSearchForm, Search.class);
		Page<Employee> page = employeeService.findPage(employeeSearch, pageable);
		model.addAttribute("page", page);
		return "employee/search";
	}

}
