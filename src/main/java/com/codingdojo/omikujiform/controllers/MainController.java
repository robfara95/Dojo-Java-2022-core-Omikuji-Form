package com.codingdojo.omikujiform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
	@GetMapping("/")
	public String main(HttpSession session) {
		return "redirect:/omikuji";
	}
	
	@GetMapping("/omikuji")
	public String index(HttpSession session) {
		return "index.jsp";
	}
	
	@PostMapping("/omikuji/show")
	public String procssingInputData(@RequestParam("number") int number, 
                                     @RequestParam("city") String city, 
                                     @RequestParam("name") String name, 
                                     @RequestParam("hobby") String hobby, 
                                     @RequestParam("speak") String speak, 
                                     @RequestParam("type") String type, 
                                     HttpSession session) {
		System.out.println("rfs i am here in procssing data");
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("name", name);
		session.setAttribute("hobby", hobby);
		session.setAttribute("speak", speak);
		session.setAttribute("type", type);
		return "redirect:/omikuji/show";
	}
	
	@GetMapping("/omikuji/show")
	public String display(Model model, HttpSession session) {
		System.out.println("rfs i am here in display");
		int number = (int) session.getAttribute("number");
		String city = (String) session.getAttribute("city");
		String name = (String) session.getAttribute("name");
		String hobby = (String) session.getAttribute("hobby");
		String speak = (String )session.getAttribute("speak");
		String type = (String) session.getAttribute("type");
		
		model.addAttribute("number", number);
		model.addAttribute("name", name);
		model.addAttribute("city", city);
		model.addAttribute("hobby", hobby);
		model.addAttribute("speak", speak);
		model.addAttribute("type", type);

//		System.out.println("number = " + number + " city: " + city);
		return "display.jsp";
	}
}
