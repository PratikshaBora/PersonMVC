package com.tka.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.tka.model.Person;
import com.tka.service.FirstService;

@Controller
public class FirstController {
	
	@Autowired
	FirstService service;
	
	@GetMapping("/w")
	public String first() {
		System.out.println("welcome");
		return "welcome";
	}
	
	@GetMapping("/attribute")
	public String second(Model m) {
		m.addAttribute("name","Manasi");
		m.addAttribute("surname", "Morey");
		
		return "details";
	}
	
	@PostMapping("/InputData")
	public String inputData(@ModelAttribute Person p,Model m) {
		m.addAttribute("Person", p);
		m.addAttribute("msg",service.addData(p));
		return "formdata";
	}
	
	@GetMapping("/all")
	public String showData(Model m){
		List<Person> list = service.showPersonData();
		m.addAttribute("data", list);
		
		return "show";
	}
}
