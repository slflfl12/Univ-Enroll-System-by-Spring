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
<h3>수강신청 현황</h3>
	<table>
		<tr>
			<th>년도</th><th>학기</th><th>교과코드</th><th>교과목명</th><th>구분</th><th>학점</th>
		</tr>
		<c:forEach var="course" items="${detailcourses}">
			<tr>
				<td><c:out value="${course.year }"/></td>
				<td><c:out value="${course.semester }"/></td>
				<td><c:out value="${course.id }"/></td>
				<td><c:out value="${course.title }"/></td>
				<td><c:out value="${course.division }"/></td>
				<td><c:out value="${course.credit }"/></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>