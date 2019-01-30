<%@page import="kr.or.ddit.country.model.CountryVo"%>
<%@page import="kr.or.ddit.lprod.model.LprodVo"%>
<%@page import="kr.or.ddit.user.model.UserVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<h1 class="page-header">전체 국가 리스트</h1>
			<%
				List<CountryVo> countryList = (List) request.getAttribute("countryList");
			%>
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>국가번호</th>
							<th>국가코드</th>
							<th>국가이름</th>
							<th>국가구역</th>
						</tr>
					</thead>
					<tbody>
					<%
						for(int i=0; i<countryList.size(); i++){
							out.write("<tr class='countryTr' data-country_iso_code='"+ 
									countryList.get(i).getCountry_iso_code() +"'>");
							out.write("    <td>"+ (i+1) +"</td>");
							out.write("    <td>"+ countryList.get(i).getCountry_id() +"</td>");
							out.write("    <td>"+ countryList.get(i).getCountry_iso_code() +"</td>");
							out.write("    <td>"+ countryList.get(i).getCountry_name() +"</td>");
							out.write("    <td>"+ countryList.get(i).getCountry_subregion() +"</td>");
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
	
</body>
</html>

<%-- localhost/module/main.jsp --%>

















