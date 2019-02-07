<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- c랑 fmt랑 따로. --%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	실습
	1. select 변경 (ko -> ja) --> 현재 페이지로 서버 요청 --> select로 변경한 로케일이 
	selectLang.jsp가 화면에 출력되도록 구현.
	2. select box option 태그가 요청한 로케일로 선택이 되도록 설정.
	3. 만약 로케일 파라미터가 없을 경우 기본값은 ko
	
	
	1. <form action="">으로 요청. <form>안에 <input name="" value="">를 통해 파라미터 입력.
	
 --%>

<%
	// localhost/jstl/selectLang.jsp --> lang 파라미터가 없음.
	// form(button -> select) --> lang 파라미터 존재.
	String lang = request.getParameter("lang");
	lang = lang == null ? "ko" : lang;
	pageContext.setAttribute("lang", lang); // 속성에 넣어놓고 el 사용.
	
%>

<form action="${pageContext.request.contextPath }/jstl/selectLang.jsp" id="frm">
	<select id="mySel" name="lang">
		<option value="ko" <c:if test="${lang == 'ko' }"> selected</c:if>>한국어</option>
		<option value="ja" <c:if test="${lang == 'ja' }"> selected</c:if>>日本言</option>
		<option value="en" <c:if test="${lang == 'en' }"> selected</c:if>>English</option>
		
<%-- 		
	<%	if(request.getParameter("selLocale")==null){%>
			<option value="ko" selected>한국어</option>
			<option value="ja">日本言</option>
			<option value="en">English</option>
	<%	}else if(request.getParameter("selLocale").equals("ja")){ %>
			<option value="ko">한국어</option>
			<option value="ja" selected>日本言</option>
			<option value="en">English</option>
	<%	}else if(request.getParameter("selLocale").equals("en")){ %>
			<option value="ko">한국어</option>
			<option value="ja">日本言</option>
			<option value="en" selected>English</option>
	<%	}else if(request.getParameter("selLocale").equals("ko")){ %>
			<option value="ko" selected>한국어</option>
			<option value="ja">日本言</option>
			<option value="en">English</option>
	<%	} %>
--%>	

	</select>

	<input type="submit" value="전송">
</form>
<br>
<br>


<fmt:setLocale value="${lang }"/>
<%-- 
<%	if(request.getParameter("selLocale")==null){ %>
		<fmt:setLocale value="kr"/>		
<%	}else if(request.getParameter("selLocale").equals("en")){ %>
		<fmt:setLocale value="en"/>		
<%	}else if(request.getParameter("selLocale").equals("ja")){ %>
		<fmt:setLocale value="ja"/>
<%	} %>	
--%>	
<fmt:bundle basename="kr.or.ddit.msg.msg">
	<fmt:message key="hello"></fmt:message>
	<fmt:message key="visitor">
		<fmt:param value="brown"></fmt:param>
	</fmt:message>
</fmt:bundle>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$("#mySel").on("change", function(){
			console.log("mySel change");
			
// 			console.log($(this).val());
// 			$("#selLocale").val($(this).val());
			
			$("#frm").submit();
		});
	});
</script>
<!-- 
<form action="/jstl/selectLang.jsp" id="frm">
	<input type="hidden" name="selLocale" id="selLocale" value="kr" />
</form>
-->













</body>
</html>