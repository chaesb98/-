<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="../includes/header.jsp" %>
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/login.css">
<link rel="stylesheet" href="/resources/css/nav_footer.css">
</head>


<body>

	<form action="/member/register2" id="actionForm1" method="post">
			<input type="hidden" id="id" value="${member_true.id}" name="id">
			<input type="hidden" id="password" value="${member_true.password}" name="password">
			<input type="hidden" id="name" value="${member_true.name}" name="name">
			<input type="hidden" id="email" value="${member_true.email}" name="email">
			<input type="hidden" id="call" value="${member_true.call}" name="call">
			<input type="hidden" id="address" value="${member_true.address}" name="address">
			<input type="hidden" id="postNum" value="${member_true.postNum}" name="postNum">			
			<input type="hidden" id="gender" value="${member_true.gender}" name="gender">
			<input type="hidden" id="birth" value="${member_true.birth}" name="birth">
	</form>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			var actionForm1 = $("#actionForm1");

			var id = actionForm1.find("input[name='id']").val();
			
			 $.ajax({
	                type: "POST",
	                data: {id: id},
	                success: function(response) {
	                    if (response === 'true') {
	                        // 이미 존재하는 아이디인 경우
	                        alert("이미 존재하는 아이디입니다!");
	                    } else {
	                        // 존재하지 않는 아이디인 경우, 회원가입 진행
	                        actionForm1.submit();
	                    }
	                },
	                error: function(xhr, status, error) {
	                    console.error("Ajax request failed:", status, error);
	                }
	            });
	        });
	</script>

</body>
</html>