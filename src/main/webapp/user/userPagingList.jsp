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

    <title>Paging</title>

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
			<h1 class="page-header">전체 사용자 리스트</h1>
			<!-- userList 정보를 화면에 출력하는 로직 작성 -->
			<%
				List<UserVo> userList = (List) request.getAttribute("userList");
			%>
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>사용자 아이디</th>
							<th>사용자 이름</th>
							<th>별명</th>
							<th>등록일시</th>
						</tr>
					</thead>
					<tbody>
					<%
						for(int i=0; i<userList.size(); i++){
							out.write("<tr class='userTr' data-userid='"+ userList.get(i).getUserId() +"'>");
							out.write("    <td>"+ (i+1) +"</td>");
							out.write("    <td>"+ userList.get(i).getUserId() +"</td>");
							out.write("    <td>"+ userList.get(i).getUserNm() +"</td>");
							out.write("    <td>-</td>");
							out.write("    <td>"+ userList.get(i).getReg_dt_fmt() +"</td>");
							out.write("</tr>");
						}
					%>
					</tbody>
				</table>
					<%					
					int cpage = (Integer) request.getAttribute("page");
					int userCnt = (Integer) request.getAttribute("userCnt");
					int pageSize = (Integer) request.getAttribute("pageSize");
					int lastPage = userCnt / pageSize + (userCnt % pageSize > 0 ? 1 : 0);
					
					String cp = request.getContextPath();
				%>
				<nav style="text-align: center;">
					<ul class="pagination">
						<%	if(cpage == 1){ %>
							<li class="disabled"><a aria-label="Previous"> 
								<span aria-hidden="true">&laquo;</span>
							</a></li>
						<%	}else{ %>
							<li><a href="<%=cp %>/userPagingList?page=1" aria-label="Previous"> 
								<span aria-hidden="true">&laquo;</span>
							</a></li>						
						<%	} %>
						<%	for(int i = 1; i <= lastPage; i++){	%>
							<li
							<%	if(i == cpage){ %>
								class="active"
							<%	} %>
							><a href="<%=cp %>/userPagingList?page=<%=i%>"><%=i%></a></li>						
						<%	} %>	
						<%	if(cpage == lastPage){ %>
							<li class="disabled"><a aria-label="Next"> 
									<span aria-hidden="true">&raquo;</span>
							</a></li>
						<%	}else{ %>
							<li><a href="<%=cp %>/userPagingList?page=<%=lastPage%>" aria-label="Next"> 
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
		// 문서로딩이 완료된 이후 이벤트 등록
		$(document).ready(function(){
			console.log("document ready");
			
			// 사용자 tr 태그 클릭시 이벤트 핸들러
			$(".userTr").on("click", function(){
				
				// 클릭한 userTr 태그의 userId 값을 출력.
// 				var userId = $(this).children()[1].innerText;
// 				console.log("userId : " + userId);

				var userId = $(this).data("userid");
				
				// /user
				// 1. document
// 				document.location = "/user?userId=" + userId;
				
				// 2. form
				$("#userId").val(userId);
				
// 				$("#frm").attr("action", "/userAllList");
				// --> form 태그의 속성 변경 가능.
				
				$("#frm").submit();
				
			});
		});
	</script>
	
<form action="<%=request.getContextPath() %>/user" id="frm">
	<input type="hidden" name="userId" id="userId"/>
</form>
	
</body>
</html>

<%-- localhost/module/main.jsp --%>

















