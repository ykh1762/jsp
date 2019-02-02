<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.ddit.country.model.CountryVo"%>
<%@page import="kr.or.ddit.lprod.model.LprodVo"%>
<%@page import="kr.or.ddit.user.model.UserVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>- Countries -</title>

    <!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/css/dashboard.css" rel="stylesheet">

<%@include file="/module/jsLib.jsp" %>

</head>
<body>
<%@include file="/module/header.jsp" %> 
<%-- 정적 include --%>




<div class="container-fluid">
	<div class="row">
		<div class="col-sm-3 col-md-2 sidebar">
			<%@include file="/module/left.jsp"%>
		</div>
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<%
			List<CountryVo> countryList = (List) request.getAttribute("countryList");
		%>
		<%	if(request.getParameter("selLocale")==null){ %>
				<fmt:setLocale value="kr"/>		
		<%	}else if(request.getParameter("selLocale").equals("en")){ %>
				<fmt:setLocale value="en"/>		
		<%	}else if(request.getParameter("selLocale").equals("ja")){ %>
				<fmt:setLocale value="ja"/>
		<%	} %>		
			<fmt:bundle basename="kr.or.ddit.msg.msg">
			<h1 class="page-header"><fmt:message key="title"></fmt:message></h1>
			
			Language : 
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
			<%
	  			ArrayList<String> flagList = new ArrayList<String>();
	   			
	    		if(flagList.size() == 0){
	 				flagList.add("France.png");
	    		}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("United States of America.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("United States of America.png");
	   				}
	   			}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("Germany.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("Germany.png");
	   				}
	   			}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("United Kingdom.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("United Kingdom.png");
	   				}
	   			}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("The Netherlands.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("The Netherlands.png");
	   				}
	   			}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("Ireland.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("Ireland.png");
	   				}
	   			}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("Denmark.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("Denmark.png");
	   				}
	   			}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("Spain.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("Spain.png");
	   				}
	   			}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("Turkey.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("Turkey.png");
	   				}
	   			}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("Brazil.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("Brazil.png");
	   				}
	   			}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("Argentina.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("Argentina.png");
	   				}
	   			}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("Malaysia.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("Malaysia.png");
	   				}
	   			}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("Japan.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("Japan.png");
	   				}
	   			}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("India.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("India.png");
	   				}
	   			}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("Australia.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("Australia.png");
	   				}
	   			}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("New Zealand.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("New Zealand.png");
	   				}
	   			}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("Poland.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("Poland.png");
	   				}
	   			}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("South Africa.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("South Africa.png");
	   				}
	   			}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("Saudi Arabia.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("Saudi Arabia.png");
	   				}
	   			}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("Canada.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("Canada.png");
	   				}
	   			}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("China.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("China.png");
	   				}
	   			}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("Singapore.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("Singapore.png");
	   				}
	   			}
	   			for(int i=0; i<flagList.size(); i++){
	   				if(flagList.get(i).equals("Italy.png")){
	   					break;
	   				}else if(i == flagList.size() - 1){
	   					flagList.add("Italy.png");
	   				}
	   			}    			
    			
			%>
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th><fmt:message key="col1"></fmt:message></th>
							<th><fmt:message key="col2"></fmt:message></th>
							<th><fmt:message key="col3"></fmt:message></th>
							<th><fmt:message key="col4"></fmt:message></th>
							<th><fmt:message key="col5"></fmt:message></fmt:bundle>	</th>
						</tr>
					</thead>
					<tbody>
					<%
						for(int i=0; i<countryList.size(); i++){
							out.write("<tr class='countryTr' data-country_iso_code='"+ 
									countryList.get(i).getCountry_iso_code() +"'>");
							out.write("    <td>"+ (i+1) +"</td>"); %>
							<td><img src="../img/<%=countryList.get(i).getCountry_name() %>.png" width="40" border="1">
					<%		
							out.write("    <td>"+ countryList.get(i).getCountry_name() +"</td>");
							out.write("    <td>"+ countryList.get(i).getCountry_subregion() +"</td>");
							out.write("    <td>"+ countryList.get(i).getCountry_iso_code() +"</td>");
							out.write("    <td>"+ countryList.get(i).getCountry_id() +"</td>");
							out.write("</tr>");
						}
					%>
					
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script>
		$(document).ready(function(){
			$(".countryTr").on("click", function(){
				var country_iso_code = $(this).data("country_iso_code");
				
				$("#country_iso_code").val(country_iso_code);
				$("#frm").submit();
			});				
		});
	</script>
	
<form action="<%=request.getContextPath() %>/country" id="frm">
	<input type="hidden" name="country_iso_code" id="country_iso_code"/>
</form>
	
<script>
	$("#mySel").on("change", function(){
		console.log($(this).val());
		$("#selLocale").val($(this).val());
		
		$("#form").submit();
		// 아래 <form>이랑 id가 겹쳤네.
	});
</script>
<form action="/countryList" id="form">
	<input type="hidden" name="selLocale" id="selLocale" value="kr" />
</form>	
	
</body>
</html>

<%-- localhost/module/main.jsp --%>

















