package com.example.Course.Registration.System.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Course.Registration.System.model.Course;
import com.example.Course.Registration.System.model.CourseRegistry;
import com.example.Course.Registration.System.repository.CourseRegistryRepo;
import com.example.Course.Registration.System.repository.CourseRepo;

@Service
public class CourseService {
	
	@Autowired
	CourseRepo courseRepo;
	
	@Autowired
	CourseRegistryRepo courseRegistryRepo;

	public List<Course> availableCourses() {
		// TODO Auto-generated method stub
		return courseRepo.findAll();
	}

	public List<CourseRegistry> entrollStudent() {
		// TODO Auto-generated method stub
		return courseRegistryRepo.findAll();
	}

	public void enrollCourse(String name, String emailId, String courseName) {
		// TODO Auto-generated method stub
		CourseRegistry courseRegistry = new CourseRegistry(name,emailId,courseName);
		courseRegistryRepo.save(courseRegistry);
	}
	
}
