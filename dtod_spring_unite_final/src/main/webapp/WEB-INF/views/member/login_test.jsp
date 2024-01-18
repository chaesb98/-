<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<body>
	<form action="/member/main" method="post" role="form" id="actionForm">
		<input type="hidden" name="id" value="${login.id}">
		<input type="hidden" name="password" value="${login.password}">
		<input type="hidden" name="mail" value="${login.mail}">
		<input type="hidden" name="name" value="${login.name}">
		<input type="hidden" name="address" value="${login.address}">
		<input type="hidden" name="call" value="${login.call}">
		<input type="hidden" name="gender" value="${login.gender}">
		<input type="hidden" name="birth" value="${login.birth}">
	</form>
	
	<!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	var actionForm = $("#actionForm");
	var user = actionForm.find("input[name='id']").val();
	if (user != '') {
		alert(user + "님 환영합니다!");
		actionForm.submit();
	} else{
		alert("id나 password가 일치하지 않습니다!");
		actionForm.each(function(){
			this.reset();
		});
		actionForm.attr("action","/index.jsp");
		actionForm.submit();
	}
</script>	
</body>
</html>