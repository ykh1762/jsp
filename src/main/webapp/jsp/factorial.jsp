<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 1. factorial 메소드 로직 작성 -->
<!-- 2. jsp 스크립틀릿을 이용하여 1~8까지 factorial을 화면에 출력 -->
<%!
	public int factorial(int param){
		if(param<=1){
			return 1;
		}
		return param * factorial(param - 1);
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
= Factorial = 123<br><br>

<%	for(int i=-1; i<10; i++){ %>
		<%=i %>! : <%=factorial(i) %> <br>
<%	} %>
<%-- 1! : <%=factorial(1) %> <br> --%>
<%-- 2! : <%=factorial(2) %> <br> --%>
<%-- 3! : <%=factorial(3) %> <br> --%>
<%-- 4! : <%=factorial(4) %> <br> --%>
<%-- 5! : <%=factorial(5) %> <br> --%>
<%-- 6! : <%=factorial(6) %> <br> --%>
<%-- 7! : <%=factorial(7) %> <br> --%>
<%-- 8! : <%=factorial(8) %> <br> --%>

</body>
</html>