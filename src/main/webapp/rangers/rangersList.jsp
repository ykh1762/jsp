<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
rangersList.jsp <br><br>

<%
	List<String> rangersList = (List<String>)request.getAttribute("rangersList");
%>

<table>
	<tr>
		<th>이름11</th>
	</tr>
	<%-- 출력 --%>
<%	
	// 향상된 for문.
	for(String ranger : rangersList){
		out.write("<tr>");	
		out.write("  <td>" + ranger + "</td>");	
		out.write("</tr>");	
	}

// 	for(int i=0; i<rangersList.size(); i++){
// 		out.write("<tr>");	
// 		out.write("<td>" + rangersList.get(i) + "</td>");	
// 		out.write("</tr>");	
// 	}
%>
	
	
</table>

</body>
</html>

















