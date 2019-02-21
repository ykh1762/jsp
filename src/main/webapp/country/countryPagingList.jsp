<%@page import="kr.or.ddit.country.model.CountryVo"%>
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

    <title>Paging</title>

    <!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- Custom styles for this template -->
    <link href="${cp }/css/dashboard.css" rel="stylesheet">

<%@include file="/module/jsLib.jsp" %>

</head>
<body>
<%@include file="/module/header.jsp" %> 
<%-- 정적 include --%>

<%
	List<CountryVo> countryList = (List) request.getAttribute("countryList");
%>

<div class="container-fluid">
	<div class="row">
		<div class="col-sm-3 col-md-2 sidebar">
			<%@include file="/module/left.jsp"%>
		</div>
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
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
			
	


			
			<script>
				$("#mySel").on("change", function(){
					console.log($(this).val());
					$("#selLocale").val($(this).val());
					
					$("#form").submit();
				});
			</script>
			<!-- servlet을 갔다가 여기로 넘어와야 되는구나. -->
			<form action="/countryPagingList" id="form">
				<input type="hidden" name="selLocale" id="selLocale" value="kr" />
			</form>			
			<br> 
			
			
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th><fmt:message key="col1"></fmt:message></th>
							<th><fmt:message key="col2"></fmt:message></th>
							<th><fmt:message key="col3"></fmt:message></th>
							<th><fmt:message key="col4"></fmt:message></th>
							<th><fmt:message key="col5"></fmt:message></th></fmt:bundle>
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
					<%					
					int cpage = (Integer) request.getAttribute("page"); // 현재 페이지(current page).
					int countryCnt = (Integer) request.getAttribute("countryCnt");
					int pageSize = (Integer) request.getAttribute("pageSize");
					int lastPage = countryCnt / pageSize + (countryCnt % pageSize > 0 ? 1 : 0);
					
					String cp = request.getContextPath();
				%>
				<nav style="text-align: center;">
					<ul class="pagination">
						<%	if(cpage == 1){ %>
							<li class="disabled"><a aria-label="Previous"> 
								<span aria-hidden="true">&laquo;</span>
							</a></li>
						<%	}else{ %>
							<li><a href="<%=cp %>/countryPagingList?page=1" aria-label="Previous"> 
								<span aria-hidden="true">&laquo;</span>
							</a></li>						
						<%	} %>
						<%	for(int i = 1; i <= lastPage; i++){	%>
							<li
							<%	if(i == cpage){ %>
								class="active"
							<%	} %>
							><a href="<%=cp %>/countryPagingList?page=<%=i%>"><%=i%></a></li>						
						<%	} %>	
						<%	if(cpage == lastPage){ %>
							<li class="disabled"><a aria-label="Next"> 
									<span aria-hidden="true">&raquo;</span>
							</a></li>
						<%	}else{ %>
							<li><a href="<%=cp %>/countryPagingList?page=<%=lastPage%>" aria-label="Next"> 
									<span aria-hidden="true">&raquo;</span>
							</a></li>							
						<%	} %>
					</ul>
				</nav>
								
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
	
<form action="${cp }/country" id="frm">
	<input type="hidden" name="country_iso_code" id="country_iso_code"/>
</form>
	
</body>
</html>

<%-- localhost/module/main.jsp --%>

















