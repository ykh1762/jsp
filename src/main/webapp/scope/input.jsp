<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
input.jsp <br><br>

<%--
	각 영역에 저장할 값을 파라미터로 전송. 
	어디로 보낼지 / 어떻게 보낼지 : form
	
	input.jsp --> 파라미터 4개 전송 --> inputAction.jsp --> 전송된 파라미터값을 각 영역에
	저장 --> inputForward.jsp로 전송 --> inputForward.jsp에서 4개의 영역에 저장된 값을 확인. 
 --%>
<form action="/scope/inputAction.jsp" method="post">
page input : <input type="text" name="pageS" value="pageValue"><br>
request input : <input type="text" name="requestS" value="requestValue"><br>
session input : <input type="text" name="sessionS" value="sessionValue"><br>
application input : <input type="text" name="applicationS" value="applicationValue"><br>
<input type="submit" value=" 전 송 ">
</form>



</body>
</html>












