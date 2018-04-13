package com.nikhil.servletdemo.mvctwo;

import java.util.ArrayList;
import java.util.List;;

public class StudentDataUtil {
	public static List<Student> getStudents(){
		List<Student> students = new ArrayList<>();
		students.add(new Student("Nikhil", "badani","nikhil.badani@gmail.com"));
		students.add(new Student("Nitin", "radke","nitin.radke@gmail.com"));
		students.add(new Student("Dev", "indurkar","Dev.indu@gmail.com"));
		return students;
	}
}
