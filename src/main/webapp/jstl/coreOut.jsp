<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here11</title>
</head>
<body>
<%
	request.setAttribute("userId", "brown");
	request.removeAttribute("userId");
%>


userId : <c:out value="${userId }" default="hello"></c:out> <br>
userId : <c:out value="${requestScope.userId }" default="hello"></c:out> <br>


</body>
</html>