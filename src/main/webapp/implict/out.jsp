<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
out.jsp <br>
<%
	// localhost/implict/out.jsp
	// 스크립트릿 : 자바 코드를 사용할 수 있는 영역.
	// out : jsp의 기본객체(묵시적 객체, implict 객체) --> 개발자가 객체 선언 없이 사용할 수 있는
	// 객체.
	
	// servlet response.getPrintWriter(); 와 동일.
	out.write("hello, world.");
%>

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
</table>	

<!-- out 객체로 바꾸기.. -->
<!-- <table border="1"> -->
<%-- <% --%>
// 	for(int i=1; i<=9; i++){
// 		out.write("<tr>");
// 		for(int j = 2; j <= 9 ; j++){
// 			out.write("<td>" + i + "*" + j +);
<%-- %> --%>
		
<%-- 		<td><%=j%> * <%=i %> = <%=i*j %></td> --%>
<!-- <!-- 		<td>2 * 1 = 2</td> --> -->
<!-- <!-- 		<td>2 * 2 = 4</td> --> -->
		
<!-- <!-- 		<td>3 * 1 = 3</td> --> -->
<%-- <%		} %> --%>
<!-- 		</tr> -->
	
<%-- <%	} %> --%>
<!-- </table>	 -->

</body>
</html>