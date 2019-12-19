<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/table.css" />
</head>
<body>
<h3>학기별 이수 학점</h3>
	<table>
		<tr>
			<th>년도</th><th>학기</th><th>이수 학점</th><th>상세 보기</th>
		</tr>
		<c:forEach var="course" items="${semestercourses}">
			<tr>
				<td><c:out value="${course.year }"/></td>
				<td><c:out value="${course.semester }"/></td>
				<td><c:out value="${course.sum }"/></td>
				<td><a href="${pageContext.request.contextPath}/detailcourse?year=${course.year}&semester=${course.semester}">링크</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>