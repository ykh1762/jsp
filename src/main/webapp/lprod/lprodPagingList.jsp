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

    <title>lprod Paging</title>

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
			<h1 class="page-header">전체 제품 리스트</h1>
			<%
				List<LprodVo> lprodList = (List) request.getAttribute("lprodList");
			%>
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>분류번호</th>
							<th>카테고리</th>
							<th>분류이름</th>
						</tr>
					</thead>
					<tbody>
					<%
						for(int i=0; i<lprodList.size(); i++){
							out.write("<tr class='lprodTr' data-lprod_gu='"+ 
									lprodList.get(i).getLprod_gu() +"'>");
							out.write("    <td>"+ (i+1) +"</td>");
							out.write("    <td>"+ lprodList.get(i).getLprod_id() +"</td>");
							out.write("    <td>"+ lprodList.get(i).getLprod_gu() +"</td>");
							out.write("    <td>"+ lprodList.get(i).getLprod_nm() +"</td>");
							out.write("</tr>");
						}
					%>
					</tbody>
				</table>
				<%					
					int cpage = (Integer) request.getAttribute("page");
					int lprodCnt = (Integer) request.getAttribute("lprodCnt");
					int pageSize = (Integer) request.getAttribute("pageSize");
					int lastPage = lprodCnt / pageSize + (lprodCnt % pageSize > 0 ? 1 : 0);
					
					String cp = request.getContextPath();
				%>
				<nav style="text-align: center;">
					<ul class="pagination">
						<%	if(cpage == 1){ %>
							<li class="disabled"><a aria-label="Previous"> 
								<span aria-hidden="true">&laquo;</span>
							</a></li>
						<%	}else{ %>
							<li><a href="<%=cp %>/lprodPagingList?page=1" aria-label="Previous"> 
								<span aria-hidden="true">&laquo;</span>
							</a></li>						
						<%	} %>
						<%	for(int i = 1; i <= lastPage; i++){	%>
							<li
							<%	if(i == cpage){ %>
								class="active"
							<%	} %>
							><a href="<%=cp %>/lprodPagingList?page=<%=i%>"><%=i%></a></li>						
						<%	} %>	
						<%	if(cpage == lastPage){ %>
							<li class="disabled"><a aria-label="Next"> 
									<span aria-hidden="true">&raquo;</span>
							</a></li>
						<%	}else{ %>
							<li><a href="<%=cp %>/lprodPagingList?page=<%=lastPage%>" aria-label="Next"> 
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
			console.log("document ready");
			
			$(".lprodTr").on("click", function(){
				var lprod_gu = $(this).data("lprod_gu");
				
				$("#lprod_gu").val(lprod_gu);
				$("#frm").submit();
				
			});
		});
	</script>
	
<form action="<%=request.getContextPath() %>/prodList" id="frm">
	<input type="hidden" name="lprod_gu" id="lprod_gu"/>
</form>
	
</body>
</html>

<%-- localhost/module/main.jsp --%>

















