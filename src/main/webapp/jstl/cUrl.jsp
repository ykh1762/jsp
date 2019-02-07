<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here111</title>
</head>
<body>
<c:url value="/userPagingList" var="url"></c:url>
	<c:param name="page" value="5"></c:param>
${url } <br>

</body>
</html>