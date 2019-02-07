<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="kr.or.ddit.rangers.service.RangersService"%>
<%@page import="kr.or.ddit.rangers.model.RangerVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
	jstl을 사용하기위한 준비 : jsp 디렉티브(taglib)를 이용하여 사용하고자 하는 라이브러리 
	선언. prefix="임의로 작성 가능하나 일반적으로 사용하는 이름 권장. core : c, format : 
	fmt, function : fn", uri="자동완성기능"
	 
 --%>    
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- localhost/jstl/core.jsp --%>

<h2>core : set</h2>

<%-- 특정 scope(page, request, session, application)에 속성을 생성.
	기본 scope -> page (scope="page")
 --%>
 
 
 
<%
	RangerVo rangerVo = new RangerVo("brown", "브라운", 8);
	session.setAttribute("ranger", rangerVo);
%>
 
 
<%-- pageContext.setAttribute("userId", "brown"); --%> 
<%-- session.setAttribute("userId", "brown"); --%> 
<c:set var="userId" value="brown" scope="session"></c:set>

userId(표현식 - page) : <%=pageContext.getAttribute("userId") %> <br>
userId(표현식 - session) : <%=session.getAttribute("userId") %> <br>
userId(el) : ${userId } <br>
==================================== <br>
<c:set target="${ranger }" property="age" value="10"></c:set>
ranger - 나이 변경 : ${ranger } <br>

<!-- c 태그 안에 객체를 생성할 수도 있다. -->
객체생성 <c:set var="test" value="<%=new RangerVo(\"brown\", \"브라운\", 15) %>"></c:set>
test : ${test } <br>
<%--
	pageContext.setAttribute("test", new RangerVo("browm", "브라운", 15));
	
	pageContext.removeAttribute("test");
 --%>
<c:remove var="test"/>
test : ${test } <br>


<h2>core - if</h2>

<%-- pageContext에 code 속성 추가. --%>
<c:set var="code" value="01"></c:set>

<c:if test="${code == '01' }">
	<span>code 값이 01 입니다.</span>
</c:if>

<c:if test="${code == '00' }">
	<span>code 값이 00 입니다.</span>
</c:if>

<h2>core - choose</h2>
<%-- request.setAttribute("code", "03"); --%>
<c:remove var="code"/>
<c:set var="code" value="03" scope="request"></c:set>
<c:choose>
	<c:when test="${code == '00' }"> code 값이 ${code} 00 입니다.</c:when>
	<c:when test="${code == '01' }"> code 값이 ${code} 01 입니다.</c:when>
	<c:when test="${code == '02' }"> code 값이 ${code} 02 입니다.</c:when>
	<c:when test="${code == '03' }"> code 값이 ${code} 03 입니다.</c:when>
	<c:when test="${code == '04' }"> code 값이 ${code} 04 입니다.</c:when>
	<c:otherwise> code 값이 ${code } else 입니다.</c:otherwise>
</c:choose>


<h2>core - forEach</h2>
<%
	RangersService rangerService = new RangersService();
	request.setAttribute("rangersList", rangerService.getRangerVoAll());
%>
<h3>향상된 for문</h3>
<c:forEach items="${rangersList }" var="ranger">
	${ranger.name } / ${ranger.alias } / ${ranger.age } <br>
</c:forEach>

<h3>일반 for문</h3>
<%-- for(int i=0; i<=5; i++) --%>
<%-- for(int i=5; i>=0; i--) step < 0은 안됨.--%>
<c:forEach begin="0" end="5" varStatus="status" step="3">
	<span> test ${status.index }</span> <%-- 인덱스 표시 --%>
</c:forEach>



<%--
	for(int i=0; i<rangersList.size(); i++)
		System.out.println(rangersList.get(i).getName());
		
	i<=rangersList.size()이면 ${rangersList.size() }을
	i<rangersList.size()이면 ${rangersList.size() - 1 }을 쓴다.		
--%>
<c:forEach var="i" begin="0" end="${rangersList.size() - 1 }">
	${rangersList.get(i).name } / ${rangersList.get(i).alias } / ${rangersList.get(i).age } <br>
</c:forEach>
<br>
<br>

<%--
	<c:forEach>에서 따로 break;를 쓸수는 없다. -> 로직으로 처리.
	<c:set>으로 변수 loopFlag를 true로 지정. <c:forEach>문 안을 <c:if>로 감싸 flag가 
	true일때 돌아가도록 하고 특정 값에서 flag를 false로 설정해주면 break와 같이 작동함.
 --%>
break 적용
<c:set var="loopFlag" value="true" />
<c:forEach var="i" begin="0" end="${rangersList.size() - 1 }">
	<c:if test="${loopFlag }">
		<c:if test="${i == 1 }">
			<c:set var="loopFlag" value="false"></c:set>
		</c:if>
		${rangersList.get(i).name } / ${rangersList.get(i).alias } / ${rangersList.get(i).age } <br>
	</c:if>
</c:forEach>



<h2>core - forEach (map)</h2>
<%
	Map<String, String> map = new HashMap<String, String>();
	map.put("ranger1", "brown");
	map.put("ranger2", "cony");
	map.put("ranger3", "sally");
	
	pageContext.setAttribute("map", map);
%>
<c:forEach items="${map }" var="entry">

	${entry.key } / ${entry.value }<br>
</c:forEach>


<br>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

</body>
</html>












