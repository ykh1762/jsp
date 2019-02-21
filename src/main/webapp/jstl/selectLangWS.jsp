<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here11</title>
</head>
<body>

<form action="${cp }/selectLang" id="frm" method="post">
	<select id="mySel" name="lang">
		<option value="ko">한국어</option>
		<option value="ja">日本言</option>
		<option value="en">English</option>

	</select>

	<input type="submit" value="전송">
</form>
<br>
<br>


<fmt:setLocale value="${lang }"/>
<fmt:bundle basename="kr.or.ddit.msg.msg">
	<fmt:message key="hello"></fmt:message>
	<fmt:message key="visitor">
		<fmt:param value="brown"></fmt:param>
	</fmt:message>
</fmt:bundle>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
	$(document).ready(function(){
// 		${lang} -> String
// 		var lang = ${lang};		(X)
// 		var lang = "${lang}";	(O)
		
		// select box selected 적용. (c:if 태그를 수정.)
		$("#mySel > option").attr("selected", false);
		$("#mySel > option[value=${lang}]").attr("selected", true);
		
		$("#mySel").on("change", function(){
			console.log("mySel change");
			
			
			$("#frm").submit();
		});
	});
</script>













</body>
</html>