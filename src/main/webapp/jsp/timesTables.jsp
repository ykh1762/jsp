<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
jsp timestables

<table border="1">
<%
	for(int i=1; i<=9; i++){
%>
		<tr>
<%
		for(int j = 2; j <= 9 ; j++){
%>		
		<td><%=j%> * <%=i %> = <%=i*j %></td>
<!-- 		<td>2 * 1 = 2</td> -->
<!-- 		<td>2 * 2 = 4</td> -->
		
<!-- 		<td>3 * 1 = 3</td> -->
<%		} %>
		</tr>
	
<%	} %>
</table> <br><br>

<table border="1">
<%	
	// out.write()로 정리
	for(int i=1; i<=9; i++){
		out.write("<tr>");
		for(int j = 2; j <= 9 ; j++){
			out.write("<td>" + j + " * " + i + " = " + (j * i) + "</td>");
		} 
		out.write("</tr>");
	
	} %>
</table>	

</body>
</html>