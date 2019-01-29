<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
inputForward.jsp <br><br>

<%-- 4개의 영역에서 속성을 조회해본다. --%>
pageContext : <%=pageContext.getAttribute("page") %>  / null <br>
request : <%=request.getAttribute("request") %> / requestValue_setAttr <br>
session : <%=session.getAttribute("session") %> / sessionValue_setAttr <br> 
application : <%=application.getAttribute("application") %> / applicationValue_setAttr <br>
<%--session은 browser마다 다름. --%>


</body>
</html>
















