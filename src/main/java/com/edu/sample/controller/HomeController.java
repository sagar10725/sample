package com.edu.sample.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return "home";
	}

	@RequestMapping(value = "/systemTime", method = RequestMethod.GET, produces = MediaType.TEXT_PLAIN_VALUE)
	public @ResponseBody String getTime(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		Date date = new Date();

		DateFormat dateFormat = DateFormat.getDateInstance();
		String formattedDate = dateFormat.format(date);

		// response.setHeader("Content-Type", "text/plain");
		// String ourString = String.format("{ \"value\":\"%s\" }",
		// formattedDate);
		return formattedDate;
	}

	@RequestMapping(value = "/getYear", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<Integer> getYear() {
		List<Integer> listOfYear = new ArrayList<Integer>();
		for (int i = 0; i <= 5; i++) {
			listOfYear.add(i + 2010);
		}
		return listOfYear;
	}
}
