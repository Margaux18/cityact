package fr.formation.inti.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import fr.formation.inti.entities.Users;
import fr.formation.inti.services.IUsersService;

@Controller
public class Test_Controller {
	
	@Autowired
	IUsersService userservice;
	
	@RequestMapping("/test")
	public String requestMapping(Model model)
	{
		Users usr = new Users();
		usr.setAdress("qozidhqzui");
		usr.setAge(24);
		usr.setComments(null);
		usr.setMail("qwani@gmail.com");
		usr.setPassword("123456");
		usr.setPseudo("Mrh");
		userservice.addUser(usr);
		List<Users> users = userservice.getUsers();
		for(Users u: users)
		{
			System.out.println(u);
		}
		System.out.println(users.size());
		return "map";
	}

}
