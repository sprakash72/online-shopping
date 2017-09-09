package net.aka.onlineshopping.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
	@RequestMapping(value = { "/index", "/", "/home" })
	public ModelAndView getPage() {
		ModelAndView view = new ModelAndView();
		view.setViewName("shoppinghomepage"); // name of the jsp-file in the "page" folder

		String str = "Welcome to Starting page";
		view.addObject("Greeting", str); // adding of str object as "message"
											// parameter

		return view;
	}

	@RequestMapping(value = { "/test" })
	public ModelAndView getGreeting(@RequestParam(value = "greeting", required = false) String greetingText,
			@RequestParam(value = "name", required = false) String nameText) {
		ModelAndView view = new ModelAndView();
		view.setViewName("page"); // name of the jsp-file in the "page" folder
		if (greetingText == null)
			view.addObject("Greeting", "Welcome");
		else
			view.addObject("Greeting", greetingText);
		
		if (nameText == null)
			view.addObject("Name", "Guest");
		else
			view.addObject("Name", nameText);
		
		return view;
	}

}
