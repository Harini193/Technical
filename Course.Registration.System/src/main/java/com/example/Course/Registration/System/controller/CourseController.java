package com.example.Course.Registration.System.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.Course.Registration.System.model.Course;
import com.example.Course.Registration.System.model.CourseRegistry;
import com.example.Course.Registration.System.service.CourseService;


@RestController
@CrossOrigin(origins = "*")
public class CourseController {
	
	@Autowired
	CourseService courseService;
	
	@GetMapping("/courses")
	public List<Course> availableCourse(){
		return courseService.availableCourses(); 
		
	}
	
	@GetMapping("courses/entrolled")
	public List<CourseRegistry> entrolledStudent(){
		return courseService.entrollStudent();
	}
	
	@PostMapping("/courses/register")
	public String enrollCourse(@RequestParam("name") String name,
								@RequestParam("emailId") String emailId,
								@RequestParam("courseName")String courseName){
		courseService.enrollCourse(name,emailId,courseName);					
		return "congratulations!	"+name+ "Entrollment Successful for "+courseName;					
	}
}

