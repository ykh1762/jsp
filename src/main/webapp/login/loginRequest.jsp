<%@page import="java.util.Arrays"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
loginRequest <br>

<% 
	request.setCharacterEncoding("utf-8");

	Enumeration<String> paramNames = request.getParameterNames();

	while(paramNames.hasMoreElements()){
		String parameter = paramNames.nextElement();
%>
		parameter : <%=parameter %> : 
		
		<%	String[] values = request.getParameterValues(parameter); %>
		<%=Arrays.toString(values) %> <br>



<%		
	}

%>
</body>
</html>













