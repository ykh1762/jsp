<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/sumCalculation" method="get">
<%
	boolean inputCheck = (boolean)session.getAttribute("inputCheck");
	if(inputCheck){
		out.write("end를 더 큰수로 입력하세요.<br>");
	}
%>
start : <input type="text" name="inputStart"> <br>
end : <input type="text" name="inputEnd"> <br>
<input type="submit" value=" 전 송 ">
</form>


</body>
</html>