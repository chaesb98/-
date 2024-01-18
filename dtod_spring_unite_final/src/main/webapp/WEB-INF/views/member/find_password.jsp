<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  
<%@include file="../includes/header.jsp" %> 
    <!--get CSS-->
    <link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" href="/resources/css/login.css">
    <link rel="stylesheet" href="/resources/css/nav_footer.css">
    

</head>

<%@ include file="../includes/nav.jsp"%>

<body>
    <div class="container">
       <div class="row">
          <div class="log_center">
         	<div class="log_bg">
          <h1 class="log_tit pointFont">회원가입 찾기</h1>
          <hr class="log_hr" />
            <form action="/member/login" id="actionForm" class="find_txt Fonts">
                                      찾으시는 비밀번호는 <span class="log_find"><c:out value="${result.password}" /></span>입니다!
            </form>
			    <div class="log_textbox mt30">
	               <a class="log_text Font log_find_text" href="/member/register">아직 술결의 회원이 아니신가요? 지금 회원가입 하세요!</a>
		        </div>
	            <div class="log_textbox mt5">
	               <a class="log_text Font log_find_text" href="/member/login">이미 술결의 회원이신가요? 지금 로그인 하세요!</a>
	            </div>
           </div>
         </div>
       </div>
    </div>
                                
    <!-- Bootstrap core JavaScript-->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/js/sb-admin-2.min.js"></script>
 	<script type="text/javascript">
    	if ("<c:out value = "${result.password}" />" == '') {
			alert("조회된 정보가 존재하지 않습니다!");
			$("#actionForm").submit();
		}
    </script>

</body>

<%@ include file="../includes/footer.jsp"%>

</html>