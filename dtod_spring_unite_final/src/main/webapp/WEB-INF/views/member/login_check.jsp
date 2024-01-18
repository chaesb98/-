<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<body>
	<form action="/member/login" method="post" role="form" id="actionForm">
		<input id="id" type="hidden" value="${check.id}" name="id">
		<input id="password" type="hidden" value="${check.password}" name="password">
		<input id="name" type="hidden" value="${check.name}" name="name">
	</form>
	
</body>
	<!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<script type="text/javascript">
	var id = $("#id").val();
	var password = $("#password").val();
	var name = $("#name").val();
	var actionForm = $("#actionForm");
	console.log(id);
	console.log(password);
	if (id != '' && password != '') {
		alert(name+ "님 환영합니다!");
		actionForm.find("input[name='name']").remove();
		actionForm.submit();
	} else{
		alert("아이디 또는 비밀번호가 틀렸습니다!");
			actionForm.find("input").remove();
			
			actionForm.attr("method","get");
			actionForm.attr("action","/member/login");
			actionForm.submit();
	}
	</script>
</html>