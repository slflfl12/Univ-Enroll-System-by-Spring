package kr.ac.hansung.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.hansung.model.Course;
import kr.ac.hansung.model.SemesterCourse;
import kr.ac.hansung.service.CourseService;

@Controller
public class CourseController {
	
	@Autowired
	private CourseService courseService;
	
	@RequestMapping("/courses")
	public String showCourses(Model model) {
		List<Course> courses = courseService.getCourses();
		model.addAttribute("courses", courses);
		
		return "courses";
	}
	
	@RequestMapping("/showsemestercourses")
	public String showSemesterCourses(Model model) {
		List<SemesterCourse> semestercourses = courseService.getSemesterCourses();
		model.addAttribute("semestercourses", semestercourses);
		return "showsemestercourses";
	}
	
	
	@RequestMapping("/newcourses")
	public String showNewCourses(Model model) {
		List<Course> newcourses = courseService.getNewCourses();
		model.addAttribute("newcourses", newcourses);
		
		return "newcourses";
	}
	
	@RequestMapping("/detailcourse")
	public String showDetailCourses(Model model, @RequestParam(value="year") String year, @RequestParam(value="semester") String semester) {
		
		
		List<Course> detailcourses = courseService.getDetailCourses(year, semester);
		model.addAttribute("detailcourses", detailcourses);
		
		return "detailcourse";
	}
	
	@RequestMapping("/createcourse")
	public String createNewCourse(Model model) {
		
		model.addAttribute("course", new Course());
		
		return "createcourse";
	}
	
	@RequestMapping(value = "/docreatecourse")
	public String docreate(Model model, @Valid Course course, BindingResult result) {
		
		if(result.hasErrors()) {
			System.out.println("=== Web Form data does not validated ===");
			List<ObjectError> errors = result.getAllErrors();
			
			for(ObjectError error: errors) {
				System.out.println(error.getDefaultMessage());
			}
			return "createcourse";
		}
		
		courseService.insert(course); // controller -> service -> DAO
		System.out.println("coursecreated 전");
		return "coursecreated";
	}
	
}
