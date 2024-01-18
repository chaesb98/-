<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="../includes/header.jsp" %>
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/login.css">
<link rel="stylesheet" href="/resources/css/nav_footer.css">
</head>

<body>

<!-- 
<c:if test="${result == 'success'}">
	회원가입이 완료되었습니다!
</c:if>
-->
	<form action="/member/register" id="actionForm">
    	<input type="hidden" id="result" value="${result}" name="result">
	</form>

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
        var actionForm = $("#actionForm");
        var result = actionForm.find("input[name='result']").val();

        if (result === 'success') {
            alert("회원가입이 완료되었습니다!");
            actionForm.attr("action", "/member/login"); // 로그인 페이지로 이동
        } else {
            alert("다시 확인해 주세요!");
            actionForm.attr("action", "/index.jsp"); // 실패 시 첫 페이지로 이동
        }

        actionForm.find("#result").remove();
        actionForm.submit();
    });
</script>


</body>
</html>