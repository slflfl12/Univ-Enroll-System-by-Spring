package kr.ac.hansung.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.model.Course;
import kr.ac.hansung.model.SemesterCourse;

@Repository
public class CourseDao {
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource datasource) {
		jdbcTemplate = new JdbcTemplate(datasource);
	}

	public int getRowCount() {
		String sqlStatement = "select count(*) from courses";
		return jdbcTemplate.queryForObject(sqlStatement, Integer.class);
	}
	
	public List<SemesterCourse> getSemesterCourses() {
		String sqlStatement = "select year, semester, sum(credit) FROM courses GROUP BY year, semester order by year asc, semester";
		
		return jdbcTemplate.query(sqlStatement, new RowMapper<SemesterCourse>() {

			@Override
			public SemesterCourse mapRow(ResultSet rs, int rowNum) throws SQLException {
				SemesterCourse semesterCourse = new SemesterCourse();
				
				semesterCourse.setYear(rs.getString("year"));
				semesterCourse.setSemester(rs.getString("semester"));
				semesterCourse.setSum(rs.getInt("sum(credit)"));
				
				return semesterCourse;
			}
			
			
			
			
		});
		
	}
	
	public List<Course> getDetailCourses(String year, String semester) {
		
		String sqlStatement = "select * from courses where year = ? AND semester = ? order by credit";
		
		return jdbcTemplate.query(sqlStatement, new Object [] { year, semester }, new RowMapper<Course>() {

			@Override
			public Course mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Course course = new Course();
				
				course.setId(rs.getString("id"));
				course.setSemester(rs.getString("semester"));
				course.setYear(rs.getString("year"));
				course.setTitle(rs.getString("title"));
				course.setDivision(rs.getString("division"));
				course.setCredit(rs.getString("credit"));

				return course;
			}
			
			
			
		});
	}

	// query and return a multiple object
	public List<Course> getNewCourses() {

		String sqlStatement = "select * from courses where year = '2020' AND semester = '1'";

		return jdbcTemplate.query(sqlStatement, new RowMapper<Course>() {

			@Override
			public Course mapRow(ResultSet rs, int rowNum) throws SQLException {

				Course course = new Course();

				course.setId(rs.getString("id"));
				course.setSemester(rs.getString("semester"));
				course.setYear(rs.getString("year"));
				course.setTitle(rs.getString("title"));
				course.setDivision(rs.getString("division"));
				course.setCredit(rs.getString("credit"));

				return course;
			}

		});
	}

	// query and return a multiple object
	public List<Course> getCourses() {

		String sqlStatement = "select * from courses";

		return jdbcTemplate.query(sqlStatement, new RowMapper<Course>() {

			@Override
			public Course mapRow(ResultSet rs, int rowNum) throws SQLException {

				Course course = new Course();

				course.setId(rs.getString("id"));
				course.setSemester(rs.getString("semester"));
				course.setYear(rs.getString("year"));
				course.setTitle(rs.getString("title"));
				course.setDivision(rs.getString("division"));
				course.setCredit(rs.getString("credit"));

				return course;
			}

		});
	}

	
	public boolean insert(Course course) {

		String id = course.getId();
		String title = course.getTitle();
		String division = course.getDivision();
		String credit = course.getCredit();

		// id는 auto increament이기때문에 따로 지정해주지않아도 시스템이 자동적으로 숫자를 증가시켜 생성해줌

		String sqlStatement = "insert into courses (id, semester, year, title, division, credit) values (?, ?, ?, ?, ?, ?)";

		return (jdbcTemplate.update(sqlStatement, new Object[] { id, "1", "2020", title, division, credit }) == 1);
	}
	

}
