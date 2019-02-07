<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form name="frm" id="frm" action="${pageContext.request.contextPath }/coustomTag">
	분류 코드 : <input type="text" name="inputCode" id="inputCode"> <input type="button" value="확인" id="btn_check">
</form>



<tags:prodSelectbox prod_lgu="P101"/>


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#btn_check").on("click", function(){
				console.log($("#inputCode").val());
				$("#frm").submit();

			});
		});
	</script>

</body>
</html>