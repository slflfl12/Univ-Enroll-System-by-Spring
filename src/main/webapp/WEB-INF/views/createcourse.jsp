<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/table.css" />
</head>
<body>
	<sf:form method="post" action="${pageContext.request.contextPath}/docreatecourse" modelAttribute="course" >
		<table class="formtable">
			<tr><td class="label">과목코드:</td> <td><sf:input class="control" type="text" path="id" /><br/>
			<sf:errors path="id" class="error"/>
				 </td>
			</tr>
			<tr>
				<td class="label">과목명:</td><td><sf:input class="control" type="text" path="title" /> <br/>
				<sf:errors path="title" class="error"/>
				</td>
			</tr>
			<tr>
				<td class="label">구분:</td><td><sf:input class="control" type="text" path="division" /> <br/>
				<sf:errors path="division" class="error"/>
				</td>
			</tr>
			<tr>
				<td class="label">학점수:</td><td><sf:input class="control" type="text" path="credit" /> <br/>
				<sf:errors path="credit" class="error"/>
				</td>
			</tr>			
		</table>
		<div id="buttonDiv"><input type="submit" class="control" value="수강 신청" /></div>
	</sf:form>
</body>
</html>