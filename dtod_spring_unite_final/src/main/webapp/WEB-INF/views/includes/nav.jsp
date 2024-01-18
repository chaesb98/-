<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script type="text/javascript">
	var session_id = "<c:out value = "${session.id}" />";
	console.log(session_id);
	$(document).ready(function() {
		$(".logout").on("click", function() {
			alert("로그아웃이 완료되었습니다!");
		});

		$("#removeAccountForm").on("click", function() {
			alert("회원탈퇴가 완료되었습니다!");
			$("#remove_acount").submit();
		});
	});
</script>

<body>

  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <nav class="main-nav">
            <!-- ***** Logo Start ***** -->
            <a href="/" class="logo">
              <img src="/resources/images/logo.svg" alt="" style="max-width: 112px;">
            </a>
            <!-- ***** Logo End ***** -->
            <!-- ***** Menu Start ***** -->
            <ul class="nav">
              <li class="has-sub">
                <a href="javascript:void(0)">술결이야기</a>
                <ul class="sub-menu">
                  <li><a href="/pages/about">회사소개</a></li>
                  <li><a href="/pages/map">찾아오시는 길</a></li>
                  <li><a href="#">프로모션</a></li>
                  <li><a href="http://localhost:3000/">management</a></li>
                </ul>
              </li>
              <li class="scroll-to-section"><a href="/pages/product">술과 영화</a></li>
              <li class="has-sub">
                <a href="javascript:void(0)">커뮤니티</a>
                <ul class="sub-menu">
                  <li><a href="/community/list">커뮤니티 게시판</a></li>
                  <li><a href="/review/list">후기 게시판</a></li>
                </ul>
              </li>
              <li class="has-sub">
                <a href="javascript:void(0)">고객센터</a>
                <ul class="sub-menu">
                  <li><a href="/notice/list">공지사항</a></li>
                  <li><a href="/pages/qna">자주 묻는 질문</a></li>
                  
                </ul>
              </li>
              <li class="has-sub">
                <a href="javascript:void(0)">마이페이지</a>
                <ul class="sub-menu">
                <c:if test="${session.name == '' || session.name == null}">
                	<li><a href="/member/login">로그인</a></li>
                </c:if>
                <c:if test="${session.name!=null}">
                	<li><a href="/member/logout">로그아웃</a></li>
                </c:if>
                <c:if test="${session.name!=null}">
                	<li><a href="/member/modify">회원정보 수정</a></li>
                </c:if>
                  <li><a href="/consultation/list">1:1 문의</a></li>
                </ul>
              
              </li>
            </ul>
            <a class='menu-trigger'>
              <span>Menu</span>
            </a>
            <!-- ***** Menu End ***** -->
          </nav>
        </div>
      </div>
    </div>
  </header>
  <!-- ***** Header Area End ***** -->

