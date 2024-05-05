package com.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.spring.mvc.model.User;
import com.spring.mvc.service.UserService;

@Controller
public class FormController {

	@Autowired
	private UserService userService;

	@RequestMapping("/")
	public String showForm() {
		return "form";
	}

	@RequestMapping(path = "/regForm", method = RequestMethod.POST)
	public String handleForm(@ModelAttribute User user, Model model) {

		int createdUser = this.userService.createUser(user);
		model.addAttribute("Msg", "User Registred with id : " + createdUser);
		return "success-form";

	}

	/*
	 * @RequestMapping(path = "/regForm", method = RequestMethod.POST) public String
	 * handleForm ( @RequestParam("userName") String userName,
	 * 
	 * @RequestParam("email") String userEmail,
	 * 
	 * @RequestParam("password") String userPassword, Model model ) {
	 * 
	 * 
	 * User user = new User();
	 * 
	 * user.setUserName(userName); user.setEmail(userEmail);
	 * user.setPassword(userPassword);
	 * 
	 * System.out.println(user);
	 * 
	 * 
	 * model.addAttribute("user",user);
	 * 
	 * 
	 * System.out.println("user name :"+userName);
	 * System.out.println("user email :"+userEmail);
	 * System.out.println("user password : "+userPassword);
	 * 
	 * model.addAttribute("name",userName); model.addAttribute("email",userEmail);
	 * model.addAttribute("password",userPassword);
	 * 
	 * return "success-form";
	 * 
	 * }
	 */
}
