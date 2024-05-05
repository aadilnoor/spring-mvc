package com.spring.mvc.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping("/home")
	public String home(Model model) {

		System.out.println("this is home url");
		model.addAttribute("name", "Harish Noor");
		model.addAttribute("mobileNumber", 8967453423L);

		List<String> employee = new ArrayList<String>();

		employee.add("Aadil");
		employee.add("Sameer");
		employee.add("Dilshad");
		employee.add("Yasir");
		employee.add("Iliyas");
		employee.add("Arhan");
		employee.add("Shoaib");
		employee.add("Faiz");
		employee.add("Saif");

		model.addAttribute("emp", employee);

		return "index";
	}

	@RequestMapping("/help")
	public ModelAndView help() {

		System.out.println("This is help controller");
		// Creating the ModelAndView Object
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("name", "Aadil Noor");
		modelAndView.addObject("address", "SakiNaka Mumbai Maharashtra 400072");
		LocalDate date = LocalDate.now();
		modelAndView.addObject("date", date);
		// Setting the name of view
		modelAndView.setViewName("help");
		
		List<Integer> list = new ArrayList<Integer>();
		list.add(101);
		list.add(202);
		list.add(303);
		list.add(404);
		list.add(505);
		
		modelAndView.addObject("marks",list);
		
		

		return modelAndView;

	}

}
