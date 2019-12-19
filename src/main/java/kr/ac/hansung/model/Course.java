package kr.ac.hansung.model;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@ToString
@Getter
@Setter
public class Course {


	@Size(min=2, max=100, message="Id must be between 2 and 100 chars")
	private String id;
	private String semester;
	private String year;
	
	@Size(min=2, max=100, message="Title must be between 2 and 100 chars")
	private String title;
	
	@Size(min=2, max=100, message="Div must be between 2 and 100 chars")
	private String division;
	
	@NotEmpty(message="Credit cannot be empty")	
	private String credit;
	
}
