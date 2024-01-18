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

<body >
    <div class="container">
        <div class="row">
            <a href="/main.jsp"></a>
               <div class="log_center">
                      <h1 class="log_tit pointFont">아이디 찾기</h1>
                      <p>아이디가 기억나지 않으시나요? 이름과 이메일을 입력해 주시면, 아이디를 찾아드릴게요! </p>
                   <form class="user log_form" method="get" action="/member/find_id">
                      <div class="form-group mt40">
                         <input type="text" class="form-control form-control-user log_input" id="exampleInputEmail" aria-describedby="IdHelp" name="name" placeholder="이름을 입력해 주세요!">
                      </div>
                      <div class="form-group mt15">
                         <input type="email" class="form-control form-control-user log_input" id="exampleInputEmail" aria-describedby="emailHelp" name="email" placeholder="이메일을 입력해주세요!">
                      </div>
                         <button type="submit" class="mt40 find_btn log_inputbtn Font">아이디 찾기</button>
                   </form>
				   <div class="text-center mt30">
                       <a class="log_text Font" href="/member/register">회원가입 하기</a>
                   </div>
                   <div class="text-center mt5">
                        <a class="log_text Font" href="/member/login">로그인하러 가기</a>
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
    	$(".find_btn").on("click",function(e){
    		e.preventDefault();
    		var actionForm = $(".user");
    		if (actionForm.find("input[name='name']").val() == '') {
				alert("Name을 입력하세요!");
				return false;
			} else if(actionForm.find("input[name='email']").val() == ''){
				alert("Email을 입력하세요!");
				return false;
			};
    		actionForm.submit();
    	});
    </script>

</body>
<%@ include file="../includes/footer.jsp"%>

</html>