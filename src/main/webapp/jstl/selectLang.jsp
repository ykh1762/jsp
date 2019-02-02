<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here1112</title>
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


<select id="mySel">
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
</select>
<br>
<br>

<%	if(request.getParameter("selLocale")==null){ %>
		<fmt:setLocale value="kr"/>		
<%	}else if(request.getParameter("selLocale").equals("en")){ %>
		<fmt:setLocale value="en"/>		
<%	}else if(request.getParameter("selLocale").equals("ja")){ %>
		<fmt:setLocale value="ja"/>
<%	} %>		
<fmt:bundle basename="kr.or.ddit.msg.msg">
	<fmt:message key="hello"></fmt:message>
	<fmt:message key="visitor">
		<fmt:param value="brown"></fmt:param>
	</fmt:message>
</fmt:bundle>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
	$("#mySel").on("change", function(){
		console.log($(this).val());
		$("#selLocale").val($(this).val());
		
		$("#frm").submit();
	});
</script>
<form action="/jstl/selectLang.jsp" id="frm">
	<input type="hidden" name="selLocale" id="selLocale" value="kr" />
</form>













</body>
</html>