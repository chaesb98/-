<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="../includes/header.jsp" %> 

	 <!--list CSS-->
	 <link rel="stylesheet" href="/resources/pages/about.css">
	 <link rel="stylesheet" href="/resources/css/animate.min.css">

</head>

<%@ include file="../includes/nav.jsp"%>

<!--===============introduce===============-->
	<video class="abvideo" src="/resources/images/abback.mp4" muted autoplay loop></video>

    <!-- About Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="row g-5 align-items-center">
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                    <img class="img-fluid animated pulse infinite" src="/resources/images/about2.png">
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <p class="sul_intro"><span class="pink">술</span>과 어울리는 <span class="pink">영화</span>를 찾고 계신가요? </p>
                    <p class="sul_intro">그럼 술결만의 <span class="pink">영화</span>, 그 영화에 어울리는</p>
                    <p class="sul_intro"><span class="pink">술</span>을 추천해드립니다.</p>
                    <p class="sul_intro"><span class="pink">술결</span>만의 정기구독 서비스를 만나보세요.</p>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->

    <!-- Feature Start -->
    <div class="container-fluid py-5 last_contents">
        <div class="container">
            <div class="row g-4">
                <div class="col-lg-4 wow fadeIn" data-wow-delay="0.1s">
                    <div class="feature-item position-relative text-center p-3">
                        <div class="py-5 px-3">
                          <h3 class="intro_box">3개월</h3>
                          <p class="sub_intro">2만원</p>
                          <p class="sub_intro">720p</p>
                          <p class="sub_intro">Standard</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 wow fadeIn intro_center" data-wow-delay="0.3s">
                    <div class="feature-item position-relative text-center p-3">
                        <div class="py-5 px-3">
                            <h3 class="intro_box">6개월</h3>
                            <p class="sub_intro">3만 9천원</p>
                            <p class="sub_intro">1080p</p>
                            <p class="sub_intro">Premium</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 wow fadeIn" data-wow-delay="0.5s">
                    <div class="feature-item position-relative text-center p-3">
                        <div class="py-5 px-3">
                            <h3 class="intro_box">12개월</h3>
                            <p class="sub_intro">4만 9천원</p>
                            <p class="sub_intro">4K+HDR</p>
                            <p class="sub_intro">Premium</p>
                        </div>
                    </div>
                </div>
                <a href="/pays/payment.do" class="goSub">구독하러 가기 →</a>
            </div>
        </div>
    </div>
    <!-- Feature End -->
    

    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<!--===============end introduce===============-->


<%@ include file="../includes/footer.jsp"%>
