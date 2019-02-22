<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>현재 사용자 정보</h2>
<%-- currentLoginUserList --%>
<h3>현재 접속자 : ${currentLoginUserList.size() }</h3>
<table>
	<tr>
		<th>사용자아이디</th>
		<th>사용자이름</th>
		<th>별명</th>
	</tr>
	
	<c:forEach items="${currentLoginUserList }" var="userVo">
		<tr>
			<td>${userVo.userId }</td>
			<td>${userVo.userNm }</td>
			<td>${userVo.alias }</td>
		</tr>
	</c:forEach>
	
</table>



</body>
</html>