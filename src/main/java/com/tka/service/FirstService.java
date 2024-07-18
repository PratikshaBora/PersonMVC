package com.tka.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tka.dao.FirstDAO;
import com.tka.model.Person;

@Service
public class FirstService {
	@Autowired
	FirstDAO dao;
	
	public String addData(Person p) {
		return dao.addPersonData(p);
	}
	
	public List<Person> showPersonData(){
		return dao.showPersonData();
	}
}
