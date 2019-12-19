<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${course.title}가 수강신청 되었습니다. 감사합니다 <br/>

<p> <a href="${pageContext.request.contextPath}/newcourses">수강신청 된 목록을 보려면 클릭하세요 </a> </p>
</body>
</html>