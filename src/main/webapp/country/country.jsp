<%@page import="kr.or.ddit.country.model.CountryVo"%>
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
    <!-- The above 3 meta tags *must* come first in the head; any other head content must 
    		come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Dashboard Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/css/dashboard.css" rel="stylesheet">

<%@include file="/module/jsLib.jsp" %>

</head>
<body>
<%@include file="/module/header.jsp" %> 

<div class="container-fluid">
	<div class="row">
		<div class="col-sm-3 col-md-2 sidebar">
			<%@include file="/module/left.jsp"%>
		</div>
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<h1 class="page-header">국가 정보 조회</h1>
			
			<form class="form-horizontal" role="form">
				<%
					CountryVo country = (CountryVo)request.getAttribute("countryVo");
				%>
				
				<div class="form-group">
					<label for="pass" class="col-sm-2 control-label">국가이름</label>
					<div class="col-sm-10">
						<label class="control-label"><%=country.getCountry_name() %></label>
					</div>
				</div>
				<div class="form-group">
					<label for="userNm" class="col-sm-2 control-label">국기</label>
					<div class="col-sm-10">
						<label class="control-label">
<%-- 						
						코드를 잘못짰나?
						<%	
						out.write(country.flagList.size());
						for(int i=0; i<country.flagList.size(); i++){ 
							if(country.flagList.get(i).equals(country.getCountry_name())){%>
								<img src="../img/<%=country.getCountry_name() %>.png" width="20" border="1"/>
							<%	break;
							}else{ %>
								<img src="../img/Korea.png" width="20" border="1"> 국기를 등록해주세요.
						<%	}
						} %>
--%>						
							<img src="../img/Korea.png" width="20" border="1"> 국기를 등록해주세요.
						</label>
					</div>
				</div>	
				<div class="form-group">
					<label for="pass" class="col-sm-2 control-label">국가구역</label>
					<div class="col-sm-10">
						<label class="control-label"><%=country.getCountry_subregion() %></label>
					</div>
				</div>
				<div class="form-group">
					<label for="userNm" class="col-sm-2 control-label">국가코드</label>
					<div class="col-sm-10">
						<label class="control-label"><%=country.getCountry_iso_code() %></label>
					</div>
				</div>
				<div class="form-group">
					<label for="userNm" class="col-sm-2 control-label">국가번호</label>
					<div class="col-sm-10">
						<label class="control-label"><%=country.getCountry_id() %></label>
					</div>
				</div>


				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default">국가 수정</button>
					</div>
				</div>
			</form>			
			
		</div>
	</div>
</div>

</body>
</html>

<%-- localhost/module/main.jsp --%>

















