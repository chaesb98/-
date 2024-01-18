<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="../includes/header.jsp" %>
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/login.css">
<link rel="stylesheet" href="/resources/css/nav_footer.css">

<script src="//code.jquery.com/ui/1.11.3/jquery-ui.js"></script>

</head>
 
<%@ include file="../includes/nav.jsp"%>

<body >


    <div class="container">
       <div class="row">
             <div class="log_center">
                 <h1 class="log_tit pointFont mt50">회원가입</h1>
                 
                     <form id="actionForm" name="actionForm" class="user log_form" action="/member/register1" method="post" role="form" >
                         <div class="form-group mt40">
                             <input type="text" class="form-control form-control-user log_input" id="id" name="id" placeholder="아이디를 입력해주세요!" required aria-required="true">
                         </div>
                         <div class="form-group mt15">
                              <input type="password" class="form-control form-control-user log_input" id="password" name="password" placeholder="비밀번호를 입력해 주세요!" required aria-required="true">
                         </div>
                         <div class="form-group mt15">
                              <input type="password" class="form-control form-control-user log_input" id="password_repeat" name="password_repeat" placeholder="비밀번호를 다시 한번 입력해 주세요!" required aria-required="true">
                         </div>
                         <div class="form-group mt15">
                              <input type="email" class="form-control form-control-user log_input" id="email" name="email" placeholder="이메일을 입력해 주세요!" required aria-required="true">
                         </div>
                         <div class="form-group mt15">
	                          <input type="text" class="form-control form-control-user log_input" id="name" name="name" placeholder="이름을 입력해 주세요!" required aria-required="true">
	                     </div>
	                     <div class="form-group mt15">
	                           <input type="text" class="form-control form-control-user log_input" id="call" name="call" placeholder="핸드폰 번호를 입력해 주세요!" required aria-required="true">
	                           
	                     </div>
	                
	<table class="form-group mt15">
			
			<tbody >
				<tr>
					<td >
						<label>
						<input type="text" id="zipNo" name="zipNo" readonly  class="log_input form-control form-control-user zipno_input" placeholder="우펀번호를 검색해 주세요!" >
						<input type="button"  value="주소검색" onclick="goPopup();" class="zipno_btn">
						</label>
					</td>
				</tr>
				<tr>

					<td>
					<label class="form-group mt15">
						<input type="text" id="roadAddrPart1" name="roadAddrPart1"  class="log_input form-control form-control-user" placeholder="도로명 주소가 자동으로 입력됩니다!">
					</label>
					</td>
				</tr>
				<tr>
					<td>
					  <label class="form-group mt15">
					  	<input type="text" id="addrDetail" name="addrDetail" class="log_input form-control form-control-user" placeholder="상세주소가 자동으로 입력됩니다!" required aria-required="true">
					  </label>
						
					</td>
				</tr>
			</tbody>
		</table>
										
	                   	 <div class="form-group mt15">
								<input type="text" placeholder="생년월일 여덟자리를 숫자만 입력해주세요!" required aria-required="true"  class="form-control form-control-user log_input input_date" name="birth">
							</div>
							<div class="form-group mt15">

							<div class="radio_line log_radio_w">
											<input class="form-check-input log_radio" type="radio" name="gender" value="M">
											<label class="form-check-label" for="flexRadioDisabled">남성</label>
										</div>
							<div class="radio_line log_radio_w">
										    <input class="form-check-input log_radio" type="radio" name="gender" value="F">
										    <label class="form-check-label" for="flexRadioDisabled">여성</label> 
							</div>
						</div>
						<a href="/member/login" class=" btn btn-primary btn-user btn-block register_btn mt30 log_inputbtn Font">회원가입 하기 </a>
					  </form>
					  
					  
						
                      <div class="log_textbox mt30">
                                <a class="log_text Font" href="/member/forgot-password">비밀번호를 잊어버리셨나요?</a>
                      </div>
                      <div class="log_textbox mt5">
                          <a class="log_text Font" href="/member/login">이미 술결의 회원이신가요? 지금 로그인 하세요!</a>
                      </div>
					  
	                 </div>
	                   

        </div>
    </div>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <script type="text/javascript">
    function goPopup() {
        
        var pop = window.open("/jusoPopup.jsp", "pop", "width=570,height=420, scrollbars=yes, resizable=yes");
    }

    /** API 서비스 제공항목 확대 (2017.02) **/
    function jusoCallBack(roadAddrPart1, addrDetail, zipNo) {
        // 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
        document.actionForm.roadAddrPart1.value = roadAddrPart1;
        document.actionForm.addrDetail.value = addrDetail;
        document.actionForm.zipNo.value = zipNo;
    }
    $(document).ready(function() {
        $(".register_btn").on("click", function(e) {
            var actionForm = $("#actionForm");
            var password = actionForm.find("input[name='password']").val();
            var password_repeat = actionForm.find("input[name='password_repeat']").val();
            var register = true;
            e.preventDefault();

            actionForm.find("input").each(function(index, item) {
                if ($(this).val().trim() == '' || $(this).val().trim() == null) {
                    alert($(this).attr("name") + " 항목을 입력하세요!");
                    register = false;
                    return false;
                }
            });

            if (register == true) {
                if (password == password_repeat) {
                	actionForm.find("input[name='password_repeat']").remove();
                	actionForm.submit();
                } else if(password != password_repeat){
                    alert("비밀번호가 같지 않습니다!");
                    return false;
                }    
            }
        });

        // "주소검색" 버튼에 대한 클릭 이벤트 핸들러 설정
        $(".zipno_btn").on("click", function () {
            goPopup();
        });
    });

    </script>


</body>

<%@ include file="../includes/footer.jsp"%>

</html>