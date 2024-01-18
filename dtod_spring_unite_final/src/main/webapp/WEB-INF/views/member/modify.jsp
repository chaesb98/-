<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  
<%@include file="../includes/header.jsp" %> 
    <!--get CSS-->
    <link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" href="/resources/css/login.css">
    <link rel="stylesheet" href="/resources/css/nav_footer.css">
    

    <script src="//code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
    
</head>
 
<%@ include file="../includes/nav.jsp"%>

	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Bootstrap core JavaScript-->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    
	<!-- MetisMenu JavaScript -->
	<script src="/resources/js/metisMenu.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/js/sb-admin-2.min.js"></script>
   
    <script type="text/javascript">

	$("#postNum").val($("#zipNo").val());       
	$("#address").val($("#roadAddrPart1").val() + "/" + $("#addrDetail").val());
    
    $(".zipno_btn").on("click", function () {
        goPopup();
    });
    
    $(document).ready(function () {
        console.log("<c:out value='${session.address}' />");

        $(".modify_btn").on("click", function (e) {
            e.preventDefault(); // 기본 동작 방지

            var joinForm = $(".user");
            var password = joinForm.find("input[name='password']").val();
            var password_repeat = joinForm.find("input[name='password_repeat']").val();
            var register = true;

            if (register == true) {
                // Ajax를 통해 서버에 수정 요청
                $.ajax({
                    type: "POST", // 또는 GET 등 HTTP 메소드 지정
                    data: joinForm.serialize(), // 폼 데이터를 직렬화하여 전송
                    success: function (data) {
                        // 서버 응답이 성공일 때 실행할 코드
                        alert("수정이 완료되었습니다!");
                        joinForm.submit();
                        window.location.href = "/member/modify";
                    },
                    error: function (error) {
                        // 서버 응답이 실패일 때 실행할 코드
                        alert("수정에 실패했습니다. 다시 시도해주세요.");
                    }
                });
            }
        });
    });
    
    function goPopup() {
        
        var pop = window.open("/jusoPopup.jsp", "pop", "width=570,height=420, scrollbars=yes, resizable=yes");
    }

    /** API 서비스 제공항목 확대 (2017.02) **/
    function jusoCallBack(roadAddrPart1, addrDetail, zipNo) {
        // 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
        document.joinForm.roadAddrPart1.value = roadAddrPart1;
        document.joinForm.addrDetail.value = addrDetail;
        document.joinForm.zipNo.value = zipNo;
    }

    </script>


<body>

    <div class="container">
                <div class="row">
                    <div class="log_center">
                                <h1 class="log_tit pointFont">회원 정보 수정</h1>
                            <form class="user log_form" method="post" role="form" id="joinForm" name="joinForm">
                                <div class="form-group mt40">
                                    <input type="text" class="form-control form-control-user log_input" id="id" name="id"
                                         value="${session.id}">
                                </div>
                                <div class="form-group mt15">
                                        <input type="password" class="form-control form-control-user log_input"
                                            id="password" name="password" value="${session.password}">
                                </div>
                                <div class="form-group mt15">
                                    <input type="email" class="form-control form-control-user log_input" id="email" name="email"
                                       value="${session.email}">
                                </div>
                                <div class="form-group mt15">
	                                    <input type="text" class="form-control form-control-user log_input" id="name" name="name"
	                                        value="${session.name}">
	                                <div class="form-group mt15">
	                                    <input type="text" class="form-control form-control-user log_input" id="call" name="call"
	                                        value="${session.call}">
	                                </div>
                                </div>
									<table class="form-group mt15">
			
			<tbody >
				<tr>
					<td >
						<label>
						<input type="text" id="zipNo" name="zipNo" readonly  class="log_input form-control form-control-user zipno_input" >
						<input type="button"  value="주소검색" onclick="goPopup();" class="zipno_btn">
						</label>
					</td>
				</tr>
				<tr>

					<td>
					<label class="form-group mt15">
						<input type="text" id="roadAddrPart1" name="roadAddrPart1"  class="log_input form-control form-control-user"  value="${session.address}">
					</label>
					</td>
				</tr>
				<tr>
					<td>
					  <label class="form-group mt15">
					  	<input type="text" id="addrDetail" name="addrDetail" class="log_input form-control form-control-user"  required aria-required="true"  value="${session.address}">
					  </label>
						
					</td>
				</tr>
			</tbody>
		</table>
		
		<div class="form-group mt15">
											<input class="form-control form-control-user log_input input_date" type="text" id="birth" value="${session.birth}" max="${maxDate}" name="birth">
										</div>

									<div class="form-group mt15">
										<div class="radio_line log_radio_w" >
											<input class="form-check-input log_radio" type="radio" name="gender" value="M" <c:out value="${session.gender.toString() == 'M' ? 'checked':''}" />>
											
											<label class="form-check-label" for="flexRadioDisabled">남성</label>
										</div>
										<div class="radio_line log_radio_w">
										    <input class="form-check-input log_radio" type="radio" name="gender" value="F" <c:out value="${session.gender.toString() == 'F' ? 'checked':''}" />>
										    <label class="form-check-label" for="flexRadioDisabled">여성</label> 
									    </div>
									</div>
                                
                                 <a href="/member/modify" class="btn btn-primary btn-user btn-block modify_btn mt30 log_inputbtn Font">회원 정보 수정하기</a>
                               
                            </form>
                           </div>
                    </div>
                </div>
    
<%@ include file="../includes/footer.jsp"%>