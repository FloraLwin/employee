package com.example.employee.domain.model;

import java.io.Serializable;

public class Search implements Serializable {

	private static final long serialVersionUID = 1L;

	private String searchCondition;

	public String getSearchCondition() {
		return searchCondition;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

}
