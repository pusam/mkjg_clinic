<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:8080/jsp_prj/common/css/main.css">
<!-- CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
/* 	$("#login").click(function() {
		var obj = document.frm;
		var id = obj.id.value;
		var pass =obj.pass.value;
		$("#frm").submit();
	});*/
		$("#login").click(function() {
			$("#frm").submit();
		});//click
});//ready
</script>
</head>
<body>
<form action="index.do" method="post" name="frm" id="frm">
<input type="text" placeholder="id" id="id" name="id">
<input type="password" placeholder="pass" id="pass" name="pass">
<input type="button" value="클릭" id="login">
</form>
</body>
</html>