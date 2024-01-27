package com.skilldistillery.lessontracker.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.skilldistillery.lessontracker.data.LessonTrackerDAO;

@Controller
public class LessonTrackerController {
	
	@Autowired
	private LessonTrackerDAO ltDAO;
	
	@GetMapping({"", "/", "home.do"})
	public String index() {
		return "index";
	}

}
