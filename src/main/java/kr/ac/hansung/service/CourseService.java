package kr.ac.hansung.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.hansung.dao.CourseDao;
import kr.ac.hansung.model.Course;
import kr.ac.hansung.model.SemesterCourse;

@Service
public class CourseService {

	@Autowired
	private CourseDao courseDao;
	
	public List<Course> getCourses() {
		return courseDao.getCourses();
	}
	
	public List<Course> getNewCourses() {
		return courseDao.getNewCourses();
	}
	
	public void insert(Course course) {
		courseDao.insert(course);
	}
	
	public List<SemesterCourse> getSemesterCourses() {
		return courseDao.getSemesterCourses();
	}
	
	public List<Course> getDetailCourses(String year, String semester) {
		return courseDao.getDetailCourses(year, semester);
	}
}
