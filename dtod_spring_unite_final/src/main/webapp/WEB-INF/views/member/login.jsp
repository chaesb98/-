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
	                 <h1 class="log_tit pointFont">로그인</h1>
	                   <form class="user log_form" method="post" role="form" action="/member/login_check">
	                      <div class="form-group mt40">
	                         <input type="email" class="form-control form-control-user log_input" id="exampleInputEmail" aria-describedby="emailHelp" name="id" placeholder="  아이디를 입력해주세요!">
	                      </div>
	                      <div class="form-group mt15">
	                         <input type="password" class="form-control form-control-user log_input" name="password" id="exampleInputPassword" placeholder="  비밀번호를 입력해주세요!">
	                      </div>
	                      <button type="button" onclick="/" class="mt40 login_btn log_inputbtn Font">로그인하기</button>
	                    </form>
	                    <div class="log_textbox mt30">
	                       <a class="log_text Font" href="/member/forgot-id">아이디를 잊어버리셨나요?</a>
	                    </div>
	                    <div class="log_textbox mt5">
	                       <a class="log_text Font" href="/member/forgot-password">비밀번호를 잊어버리셨나요?</a>
	                    </div>
	                    <div class="log_textbox mt5">
	                        <a class="log_text Font" href="/member/register">아직 술결의 회원이 아니신가요? 지금 회원가입 하세요!</a>
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
    </script>
    <script type="text/javascript">
    
    	var actionForm = $(".user");
    	$(".login_btn").on("click",function(e){
    		e.preventDefault();
	    	if (actionForm.find("input[name='id']").val() == '') {
				alert("ID를 입력하세요!");
				return false;
			} else if(actionForm.find("input[name='password']").val() == ''){
				alert("Password를 입력하세요!");
				return false;
			};
			
    		actionForm.submit();
    	});
    	
    </script>
</body>

<%@ include file="../includes/footer.jsp"%>

</html>