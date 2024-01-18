<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="/WEB-INF/views/includes/header.jsp" %> 

	 <!--index CSS-->
	 <link rel="stylesheet" href="/resources/pages/main.css">
     <link rel="preconnect" href="https://fonts.gstatic.com">
     <link rel="preconnect" href="https://fonts.googleapis.com">
     <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
     <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500;600;700;800&amp;display=swap" rel="stylesheet">
	 <link href="/resources/css/prism.css" rel="stylesheet">
	 <link href="/resources/css/theme.css" rel="stylesheet" />
     <link href="/resources/css/main.css" rel="stylesheet">
	 
	 <link href="/resources/css/swiper-bundle.min.css" rel="stylesheet">
     <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
</head>

<%@ include file="/WEB-INF/views/includes/nav.jsp"%>


<!--    Main Content-->
    <!-- ===============================================-->
    <main>

      <!-- 배너 영상 -->
      <div class="hero overlay">
        <div  class="img-bg rellax" style="position: absolute; left: 0; width: 100vw; ">
         <video autoplay controls loop muted src="/resources/images/main_banner.mp4" class="img-fluid1"></video>
       </div>
   
       <div class="container">
         <div class="ma_h_center">
             <h1 class="maheading text" data-aos="fade-up"></h1>
         </div>
       </div>
     </div>
     <!-- 배너 영상 -->

     <!-- <section> begin ============================-->
      <section id="ma_mb0" class="main_bg">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <h1 class="main_tit display-4 header text-center mb-5 main_tit"> BEST PICK!</h1>
              <div class="swiper-custom-container">
                <div class="swiper-container theme-slider" data-swiper='{"spaceBetween":1,"slideToClickedSlide":true,"slidesPerView":1,"pagination":{"el":".swiper-pagination","clickable":true,"bulletActiveClass":"bullet-active"},"breakpoints":{"320":{"slidesPerView":1,"spaceBetween":20},"480":{"slidesPerView":2,"spaceBetween":30},"640":{"slidesPerView":4,"spaceBetween":40}}}'>
                  <div class="swiper-wrapper">
                    <div class="swiper-slide">
                      <div class="text-center product"><img class="w-100 photograph" src="/resources/images/main_best01.png" alt="" />
                        <h3 class="fw-normal font-base lh-1 text-black mt-3 main_font_li">고구마 없는 <br />로맨스가 보고 싶을 땐, </h3>
                        <p class="mb-0 main_bold main_font_purple">연애 빠진 로맨스 &amp; 소맥</p>
                      </div>
                    </div>
                    <div class="swiper-slide">
                      <div class="text-center product"><img class="w-100 photograph" src="/resources/images/main_best02.png" alt="" />
                        <h3 class="fw-normal font-base lh-1 text-black mt-3 main_font_li">자유를 찾아 <br /> 떠나고 싶은 날, </h3>
                        <p class="mb-0 main_bold main_font_purple">쇼생크 탈출 &amp; 병맥주</p>
                      </div>
                    </div>
                    <div class="swiper-slide">
                      <div class="text-center product"><img class="w-100 photograph" src="/resources/images/main_best03.png" alt="" />
                        <h3 class="fw-normal font-base lh-1 text-black mt-3 main_font_li">곱씹을수록 스며드는 <br /> 여운이 진한 영화,</h3>
                        <p class="mb-0 main_bold main_font_purple">헤어질 결심 &amp; 위스키</p>
                      </div>
                    </div>
                    <div class="swiper-slide">
                      <div class="text-center product"><img class="w-100 photograph" src="/resources/images/main_best04.png" alt="" />
                        <h3 class="fw-normal font-base lh-1 text-black mt-3 main_font_li">오늘도 치열했던<br> 진정한 어른들에게,</h3>
                        <p class="mb-0 main_bold main_font_purple">악마는 프라다를 입는다 &amp; 샴페인</p>
                      </div>
                    </div>
                    <div class="swiper-slide">
                      <div class="text-center product"><img class="w-100 photograph" src="/resources/images/main_best05.png" alt="" />
                        <h3 class="fw-normal font-base lh-1 text-black mt-3 main_font_li">가볍게 볼 수 만은 없는 <br>블랙 코미디</h3>
                        <p class="mb-0 main_bold main_font_purple">완벽한 타인 &amp; 와인</p>
                      </div>
                    </div>
                    <div class="swiper-slide">
                      <div class="text-center product"><img class="w-100 photograph" src="/resources/images/main_best06.png" alt="" />
                        <h3 class="fw-normal font-base lh-1 text-black mt-3 main_font_li">여름의 푸르름과 <br>풋풋한 첫사랑, </h3>
                        <p class="mb-0 main_bold main_font_purple">Call Me by Your Name &amp; 와인</p>
                      </div>
                    </div>
                    <div class="swiper-slide">
                      <div class="text-center product"><img class="w-100 photograph" src="/resources/images/main_best07.png" alt="" />
                        <h3 class="fw-normal font-base lh-1 text-black mt-3 main_font_li">향긋하면서 씁쓸한 <br /> 위스키의 맛이 느껴지는,</h3>
                        <p class="mb-0 main_bold main_font_purple">소공녀 &amp; 위스키 글렌피딕</p>
                      </div>
                    </div>
                    <div class="swiper-slide">
                      <div class="text-center product"><img class="w-100 photograph" src="/resources/images/main_best08.png" alt="" />
                        <h3 class="fw-normal font-base lh-1 text-black mt-3 main_font_li">액션씬 맛집 <br>킬링타임 영화</h3>
                        <p class="mb-0 main_bold">분노의 질주 &amp; 생맥주</p>
                      </div>
                    </div>
                  </div>
                  <div class="swiper-pagination position-static d-flex justify-contnet-evenly mx-2 my-5"> </div>
                </div>
                <div class="swiper-button-next d-none d-sm-block">
                  <svg class="bi bi-arrow-right" xmlns="http://www.w3.org/2000/svg" width="42" height="27" fill="#E72D5A" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"></path>
                  </svg>
                </div>
                <div class="swiper-button-prev d-none d-sm-block">
                  <svg class="bi bi-arrow-left" xmlns="http://www.w3.org/2000/svg" width="42" height="27" fill="#E72D5A" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"></path>
                  </svg>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- end of .container-->

      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->

      <!-- ============================================-->

      <div class="py-7 py-sm-8 py-lg-10 py-xxl-9 py-xxl-11 bg_white"></div>
      <section class="mb-n9 mb-lg-n11 p-0 bg_white" style="transform: translateY(calc(-50% - 25px));">
        <div class="container-fluid pb-5">
          <h1 class="main_tit display-4 header text-center mb-5"> EVENT!</h1>
          <div class="position-relative hero-carousel-container" id="heroCarouselContainer">
            <div class="position-absolute top-0 d-none d-lg-block" style="right: -16px;">
              <div class="bg-carousel-soft-primary position-relative" id="heroSlidercounterContainer">
                <div class="hero-slider-counter ma_evt_num main_font_pink" id="heroSlidercounter"> 01 </div>
              </div>
            </div>
            <div class="carousel slide" id="hero-carousel" data-bs-ride="carousel">
              <div class="position-relative">
                <div class="hero-social-icons d-none d-lg-block">
                  <ul class="list-unstyled list-inline">
                    <li class="list-inline-item mr-2"><a class="text-decoration-none" href="#!"><img class="list-social-icon" src="resources/images/instagram.png" width="30" alt="..." /></a></li>
                    <li class="list-inline-item mr-2"><a class="text-decoration-none" href="#!"><img class="list-social-icon" src="resources/images/facebook.png" width="30" alt="..." /></a></li>
                    <li class="list-inline-item mr-2"><a class="text-decoration-none" href="#!"><img class="list-social-icon" src="resources/images/twitter.png" width="30" alt="..." /></a></li>
                  </ul>
                </div>
                <div class="carousel-inner" id="heroCarouselInner">
                  <div class="carousel-item active" data-bs-interval="2000"><img class="d-block w-100" src="/resources/images/ma_evt_01.png" height="447" alt="..." />
                    <div class="carousel-caption d-none d-sm-block">
                      <h1 class="display-4 text-light text-start fw-light fs-2 fs-md-3 fs-lg-4 fs-xl-5"> <strong class="ma_slide_txt pointFont">술결 2024 매거진 선착순 증정 이벤트!</strong> </h1>
                    </div>
                  </div>
                  <div class="carousel-item " data-bs-interval="2000"><img class="d-block w-100" src="/resources/images/Rectangle 116.png" height="447" alt="..." />
                    <div class="carousel-caption d-none d-sm-block">
                      <h1 class="display-4 text-light text-start fw-light"> <strong class="ma_slide_txt pointFont">2023 세계 주류 박람회에 술결이 함께 합니다.</strong></h1>
                    </div>
                  </div>
                  <div class="carousel-item " data-bs-interval="2000"><img class="d-block w-100" src="/resources/images/ma_evt_03.png" height="447" alt="..." />
                    <div class="carousel-caption d-none d-sm-block">
                      <h1 class="display-4 text-light text-start fw-light"><strong class="ma_slide_txt pointFont"> 술결 맥주 시음회 참가자 모집 중!! </strong>
                  </div>
                </div>
              </div>
              <div class="row g-0">
                <div class="col-3 position-relative">
                  <div class="carousel-indicators justify-content-start custom-indicators">
                    <button class="active" type="button" data-bs-target="#hero-carousel" data-bs-slide-to="0" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#hero-carousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#hero-carousel" data-bs-slide-to="2" aria-label="Slide 3"> </button>
                  </div>
                </div>
                <div class="col-9 position-relative">
                  <div class="card">
                    <div class="card-body border-bottom p-2 px-md-4 py-md-3 py-xl-4 p-sm-3">
                      
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>


      <!-- ============================================-->

      <!-- ============================================-->
      <!-- <section> begin ============================-->
        <section class="main_bg">
          <div class="container ma_bgbox">
            <div class="row flex-center">
              <h1 class="main_tit_deep display-4 header text-center mb-5"> SUBSCRIPTION</h1>
              <div class="col-12 col-md-6 col-lg-3 text-center mb-5 mb-lg-0"><img class="mb-5 ma_sub_img" src="/resources/images/ma_sub01.png" height="140" alt="rectangle" />
                <h1 class="text-secondary pointFont main_font_pink">3개월</h1>
                <h2 class="fw-normal text-secondary pointFont main_font_blue">₩20,000</h2>
                <p class="pointFont ma_sub_txt">720p &amp; Standard</p>
              </div>
              <div class="col-12 col-md-6 col-lg-3 text-center mb-5 mb-lg-0"><img class="mb-5 ma_sub_img" src="/resources/images/ma_sub02.png" height="140" alt="rectangle" />
                <h1 class="text-secondary pointFont main_font_pink">6개월</h1>
                <h2 class="fw-normal text-secondary pointFont main_font_blue">₩39,000</h2>
                <p class="pointFont ma_sub_txt">1080p &amp; Premeium</p>
              </div>
              <div class="col-12 col-md-6 col-lg-3 text-center mb-5 mb-lg-0"><img class="mb-5 ma_sub_img" src="/resources/images/ma_sub03.png" height="140" alt="rectangle" />
                <h1 class="text-secondary pointFont main_font_pink">12개월</h1>
                <h2 class="fw-normal text-secondary pointFont main_font_blue">₩49,000</h2>
                <p class="pointFont ma_sub_txt">4K+HDR &amp; Premium </p>
              </div>
            </div>
            <div class="mt15 text-center mb-lg-0">
              <h4 class="pointFont">술결 구독권에 가입하시면, 매달 집으로 "이 달의 술"을 배송해드립니다. 술과 함께 제공되는 OTT 서비스로 술결을 즐겨보세요 🙂</h4>
              <h4 class="pointFont mt10"> ➞ Standard와 Premium 등급에 따라 배송되는 술의 종류가 다를 수 있습니다!! </h4>
            </div>
          </div>
          <!-- end of .container-->
  
        </section>
        <!-- <section> close ============================-->
        <!-- ============================================-->

        <section id="testimonial">
          <div class="container">
            <div class="row justify-content-end">
              <div class="col-2 position-xl-relative">
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselStudentReview" data-bs-slide="prev"><span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="visually-hidden">Previous</span></button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselStudentReview" data-bs-slide="next"><span id="main_icon_color" class="carousel-control-next-icon" aria-hidden="true"></span><span class="visually-hidden">Next</span></button>
              </div>
            </div>
            <h1 class="main_tit_deep display-4 header text-start mb-5 Font">BEST REVIEW</h1>
            <div class="row flex-center h-100">
              <div class="carousel slide" id="carouselStudentReview" data-bs-ride="carousel">
                <div class="carousel-inner ps-4">
                  <div class="carousel-item active">
                    <div class="row h-100 align-items-center">
                      <div class="col-auto p-0">
                        <div class="card border-0 h-100">
                          <div class="card-body h-100 p-0 pe-4">
                            <div class="d-flex align-items-start"> <img src="/resources/images/rectangle01.png" class="initail" alt="rectangle" /><img src="/resources/images/ma_review_01.png" alt="testimonials" width="315" /></div>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-5 col-lg-6 col-xl-7 mb-4">
  
                        <h1 class="fw-normal lh-1 mt-4 mt-lg-0 pointFont main_bold">혼술로 힐링하기 :&#41;</h1>
                        <h4 class="fw-light pointFont main_bold">포도언니</h4>
                        <p class="mt-4 pe-xxl-8 pointFont main_bold main_review_txt">퇴근 후 오만과 편견에 가벼운 샴페인 한 잔으로 힐링했어요! <br /> 매일 저녁 먹으면서 뭘 볼까 고민하는데, 술결을 알게 된 이후 고민이 줄었습니다 ㅎㅎ <br /> 오롯이 나만을 위한 시간을 보낼 수 있어 자주 찾게 되네요🥰🥰 </p>
                      </div>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="row h-100 align-items-center">
                      <div class="col-auto p-0">
                        <div class="card border-0 h-100">
                          <div class="card-body h-100 p-0 pe-4">
                            <div class="d-flex align-items-start"> <img src="/resources/images/rectangle02.png" class="initail" alt="rectangle" /><img src="/resources/images/ma_review_02.png" alt="testimonials" width="315" /></div>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-5 col-lg-6 col-xl-7 mb-4">
  
                        <h1 class="fw-normal lh-1 mt-4 mt-lg-0 pointFont main_bold">연말엔 나 홀로 집에!</h1>
                        <h4 class="fw-light pointFont main_bold">최상병</h4>
                        <p class="mt-4 pe-xxl-8 pointFont main_bold main_review_txt"> 벌써 12월이 다가온다는 게 믿기지 않지만, <br /> 곳곳에서 느껴지는 크리스마스 분위기에 나 홀로 집에를 보았습니다. <br /> 나 홀로 집에를 보며 와인을 같이 마셨을 뿐인데, 충분히 연말을 즐긴 것 같아 좋았습니다. 여자친구도 좋아해서 뿌듯했습니다!!</p>
                      </div>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="row h-100 align-items-center">
                      <div class="col-auto p-0">
                        <div class="card border-0 h-100">
                          <div class="card-body h-100 p-0 pe-4">
                            <div class="d-flex align-items-start"> <img src="/resources/images/rectangle03.png" class="initail" alt="rectangle" /><img src="/resources/images/ma_review_03.png" alt="testimonials" width="315" /></div>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-5 col-lg-6 col-xl-7 mb-4">
  
                        <h1 class="fw-normal lh-1 mt-4 mt-lg-0 pointFont main_bold main">친구들과 피맥 파티👍 </h1>
                        <h4 class="fw-light pointFont main_bold">당진의 자랑</h4>
                        <p class="mt-4 pe-xxl-8 pointFont main_bold main_review_txt">오랜만에 고향 친구들 만나서 파티했어요😆😆 <br /> 오랫동안 못 봤지만, 너무 친한 친구들이어서 그런지 그냥 영화보면서 맥주에 피자 같이 먹으며 소소한 이야기 나누는 것만으로도 즐거웠어요~!! <br /> 다들 너무 만족스러워서 종종 이렇게 영화보며 파티하자고 약속했어요 ㅎㅎ</p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row justify-content-end">
                  <div class="col-auto">
                    <div class="carousel-indicators position-relative">
                      <button class="active" type="button" data-bs-target="#carouselStudentReview" data-bs-slide-to="0" aria-current="true" aria-label="Slide 1"></button>
                      <button type="button" data-bs-target="#carouselStudentReview" data-bs-slide-to="1" aria-label="Slide 2"></button>
                      <button type="button" data-bs-target="#carouselStudentReview" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>

        <!-- ============================================-->
      
      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="main_pinkbg main_warning">
        <div class="container">
          <div class="row g-3">
            <h1 class="display-4 header text-start mb-5 main_tit">WARNING</h1>
            <div class="col-sm-6">
              <div class="card card-hover h-100">
                <div class="card-body d-flex align-items-center px-4 px-lg-2 px-xl-4 main_war_box">
                  <div class="d-flex align-items-center">
                    <div class="flex-grow-1 ms-3">
                      <h4 class="fs-lg-1 text-light mb-0 pointFont main_font_blue">❗ 지나친 음주는 뇌졸중 &middot; 기억력 손상 &middot; 치매를 유발하며, <br /> &nbsp;&nbsp;임신 중 음주는 태아의 기형 발생이나 유산의 위험을 높입니다. <br /> <br />
                        ❗ 술결은 건강하고 즐거운 음주 문화를 지향합니다!</h4>
                    </div>
                  </div>
                </div>
              </div>
              <div class="circle_box">
                <img src="/resources/images/main_circle_text.png" class="main_circle_txt initail">
              </div>
            </div>
          </div>
        </div>
        <!-- end of .container-->

      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->

      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="main_bg">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <div class="mb-6">
                <h1 class=" display-4 header text-center flux">TODAY MOOD</h1>
              </div>
              <div class="row">
                <div data-aos="fade-up" data-aos-anchor-placement="center-center" class="col-sm-6 col-md-4 col-lg-3 mb-4">
                  <div class="card border-100 h-100 shadow main_mood_card ">
                    <div class="card-body p-4 h-100"><img class="w-100" src="/resources/images/ma_mood01.png" alt="" />
                      <div class="d-flex justify-content-between mt-3 border-bottom border-100 py-2"><span class="badge bg-soft-info rounded-1 text-info fw-normal p-2 main_card_box">멜로/로맨스(107분)</span>
                      </div>
                      <h3 class="fw-normal fs-lg-1 fs-xxl-2 lh-sm mt-3 pointFont main_bold">⛄ 겨울이 떠오르는</h3><p class="text-secondary pointFont main_mood_card_txt">이터널 선샤인 &amp; 위스키 사워(칵테일) </p>
                    </div>
                  </div>
                </div>
                <div data-aos="fade-up" data-aos-anchor-placement="center-center" class="col-sm-6 col-md-4 col-lg-3 mb-4 ">
                  <div class="card border-100 h-100 shadow">
                    <div class="card-body p-4 h-100"><img class="w-100" src="/resources/images/ma_mood02.png" alt="" />
                      <div class="d-flex justify-content-between mt-3 border-bottom border-100 py-2"><span class="badge bg-soft-info rounded-1 text-info fw-normal p-2 main_card_box_blue">일본 드라마</span>
                      </div>
                      <h3 class="fw-normal fs-lg-1 fs-xxl-2 lh-sm mt-3 pointFont main_bold">🩹 토닥토닥 위로가 되는</h3><p class="text-secondary pointFont main_mood_card_txt">심야식당 &amp; 따뜻한 사케</p>
                    </div>
                  </div>
                </div>
                <div data-aos="fade-up" data-aos-anchor-placement="center-center" class="col-sm-6 col-md-4 col-lg-3 mb-4">
                  <div class="card border-100 h-100 shadow main_mood_card">
                    <div class="card-body p-4 h-100"><img class="w-100" src="/resources/images/ma_mood03.png" alt="" />
                      <div class="d-flex justify-content-between mt-3 border-bottom border-100 py-2"><span class="badge bg-soft-info rounded-1 text-info fw-normal p-2 main_card_box">판타지 (시리즈물)</span>
                      </div>
                      <h3 class="fw-normal fs-lg-1 fs-xxl-2 lh-sm mt-3 pointFont main_bold">🔮 환상적인 무드 </h3><p class="text-secondary pointFont main_mood_card_txt">해리포터 시리즈 &amp; 버터 맥주</p>
                    </div>
                  </div>
                </div>
                <div data-aos="fade-up" data-aos-anchor-placement="center-center" class="col-sm-6 col-md-4 col-lg-3 mb-4 ">
                  <div class="card border-100 h-100 shadow">
                    <div class="card-body p-4 h-100"><img class="w-100" src="/resources/images/ma_mood04.png" alt="" />
                      <div class="d-flex justify-content-between mt-3 border-bottom border-100 py-2"><span class="badge bg-soft-info rounded-1 text-info fw-normal p-2 main_card_box_blue">멜로/로맨스 (135분)</span>
                      </div>
                      <h3 class="fw-normal fs-lg-1 fs-xxl-2 lh-sm mt-3 pointFont main_bold">🎄설레는 크리스마스</h3><p class="text-secondary pointFont main_mood_card_txt">러브 액츄얼리 &amp; 뱅쇼</p>
                    </div>
                  </div>
                </div>
                <div data-aos="fade-up" data-aos-anchor-placement="center-center" class="col-sm-6 col-md-4 col-lg-3 mb-4">
                  <div class="card border-100 h-100 shadow ">
                    <div class="card-body p-4 h-100"><img class="w-100" src="/resources/images/ma_mood05.png" alt="" />
                      <div class="d-flex justify-content-between mt-3 border-bottom border-100 py-2"><span class="badge bg-soft-info rounded-1 text-info fw-normal p-2 main_card_box_blue">멜로/로맨스(92분)</span>
                      </div>
                      <h3 class="fw-normal fs-lg-1 fs-xxl-2 lh-sm mt-3 pointFont main_bold">☂️ 비오는 날</h3><p class="text-secondary pointFont main_mood_card_txt">레이니 데이 인 뉴욕 &amp; 샤도네이(샤르도네) 품종의 화이트 와인</p>
                    </div>
                  </div>
                </div>
                <div data-aos="fade-up" data-aos-anchor-placement="center-center" class="col-sm-6 col-md-4 col-lg-3 mb-4">
                  <div class="card border-100 h-100 shadow main_mood_card">
                    <div class="card-body p-4 h-100"><img class="w-100" src="/resources/images/ma_mood06.png" alt="" />
                      <div class="d-flex justify-content-between mt-3 border-bottom border-100 py-2"><span class="badge bg-soft-info rounded-1 text-info fw-normal p-2 main_card_box">	
                        애니메이션, 코미디, 판타지 (시리즈물)</span>
                      </div>
                      <h3 class="fw-normal fs-lg-1 fs-xxl-2 lh-sm mt-3 pointFont main_bold">🎈 어른이들을 위한</h3><p class="text-secondary pointFont main_mood_card_txt">토이스토리 시리즈 & 이슬톡톡</p>
                    </div>
                  </div>
                </div>
              <div data-aos="fade-up" data-aos-anchor-placement="center-center" class="col-sm-6 col-md-4 col-lg-3 mb-4">
                  <div class="card border-100 h-100 shadow ">
                    <div class="card-body p-4 h-100"><img class="w-100" src="/resources/images/ma_mood07.png" alt="" />
                      <div class="d-flex justify-content-between mt-3 border-bottom border-100 py-2"><span class="badge bg-soft-info rounded-1 text-info fw-normal p-2 main_card_box_blue">멜로/로맨스, 드라마 (122분)</span>
                      </div>
                      <h3 class="fw-normal fs-lg-1 fs-xxl-2 lh-sm mt-3 pointFont main_bold">📼 추억이 방울방울</h3><p class="text-secondary pointFont main_mood_card_txt">쎄시봉 &amp; 진로 소주</p>
                    </div>
                  </div>
              </div>
              <div data-aos="fade-up" data-aos-anchor-placement="center-center" class="col-sm-6 col-md-4 col-lg-3 mb-4">
                  <div class="card border-100 h-100 shadow main_mood_card">
                    <div class="card-body p-4 h-100"><img class="w-100" src="/resources/images/ma_mood08.png" alt="" />
                      <div class="d-flex justify-content-between mt-3 border-bottom border-100 py-2"><span class="badge bg-soft-info rounded-1 text-info fw-normal p-2 main_card_box">미스터리 (100분)</span>
                      </div>
                      <h3 class="fw-normal fs-lg-1 fs-xxl-2 lh-sm mt-3 pointFont main_bold">❤️ 인스타 감성</h3><p class="text-secondary pointFont main_mood_card_txt">그랜드 부다페스트 호텔 &amp; 골든블랑 포스타 크레망 로제</ㅔ>
                    </div>
                  </div>
              </div>
              </div>
            </div>
          </div>
        </div>
        <!-- end of .container-->
        
      </section>
      <!-- <section> close ============================-->
        <!-- ============================================-->
        
        
      </main>
      <!-- ===============================================-->
      <!--    End of Main Content-->
      <!-- ===============================================-->
	
	<!-- ===============================================-->
    <!--    JavaScripts-->
    <!-- ===============================================-->
    <script src="/resources/js/popper.min.js"></script>
    <script src="/resources/js/anchor.min.js"></script>
    <script src="/resources/js/is.min.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="/resources/js/all.min.js"></script>
    <script src="/resources/js/swiper-bundle.min.js"></script>
    <script src="/resources/js/lodash.min.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="/resources/js/theme.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

    <script>

(function(){var w=window;if(w.ChannelIO){return w.console.error("ChannelIO script included twice.");}var ch=function(){ch.c(arguments);};ch.q=[];ch.c=function(args){ch.q.push(args);};w.ChannelIO=ch;function l(){if(w.ChannelIOInitialized){return;}w.ChannelIOInitialized=true;var s=document.createElement("script");s.type="text/javascript";s.async=true;s.src="https://cdn.channel.io/plugin/ch-plugin-web.js";var x=document.getElementsByTagName("script")[0];if(x.parentNode){x.parentNode.insertBefore(s,x);}}if(document.readyState==="complete"){l();}else{w.addEventListener("DOMContentLoaded",l);w.addEventListener("load",l);}})();

  ChannelIO('boot', {
    "pluginKey": "1d1e69e3-e3df-4837-abe6-89d62c8de7bb"
  });


//——————————————————————————————————————————————————
//TextScramble
//——————————————————————————————————————————————————
/**/
class TextScramble {
 constructor(el) {
   this.el = el
   this.mychars = '&lt;&gt;-_\\/[]{}—=+*^?#________'
   this.update = this.update.bind(this)
 }
 setText(newText) {
	  const oldText = this.el.innerText
	  const length = Math.max(oldText.length, newText.length)
	  const promise = new Promise((resolve) => (this.resolve = resolve))
	  this.queue = []
	  for (let i = 0; i < length; i++) {
	    const from = oldText[i] || ''
	    const to = newText[i] || ''
	    const start = Math.floor(Math.random() * 40)
	    const end = start + Math.floor(Math.random() * 40)
	    const mychars = this.randomChar()
	    this.queue.push({ from, to, start, end, mychars }) // Include mychars in the queue
	  }
	  cancelAnimationFrame(this.frameRequest)
	  this.frame = 0
	  this.update()
	  return promise
	}
 update() {
   let output = ''
   let complete = 0
   for (let i = 0, n = this.queue.length; i < n; i++) {
     let { from, to, start, end, mychars } = this.queue[i]
     if (this.frame >= end) {
       complete++
       output += to
     } else if (this.frame >= start) {
       if (!mychars || Math.random() < 0.28) {
    	   mychars = this.randomChar()
         this.queue[i].mychars = mychars
       }
       output += `<span class="dud">${mychars}</span>`
     } else {
       output += from
     }
   }
   this.el.innerHTML = output
   if (complete === this.queue.length) {
     this.resolve()
   } else {
     this.frameRequest = requestAnimationFrame(this.update)
     this.frame++
   }
 }
 randomChar() {
   return this.mychars[Math.floor(Math.random() * this.mychars.length)]
 }
}

// ——————————————————————————————————————————————————
// Example
// ——————————————————————————————————————————————————

const phrases = [
  '술결,',
  '술 마실 결심',
  'Decision To Drink',
  '영화 + 술 = 술결',
  'Alcohol & Movie',
  '#Beer #Soju #Wine',
  '#Whiskey #Cocktail #Rum',
  '#Makgeolli #Cheongju',

]

const el = document.querySelector('.text')
const fx = new TextScramble(el)

let counter = 0
const next = () => {
  fx.setText(phrases[counter]).then(() => {
    setTimeout(next, 1500)
  })
  counter = (counter + 1) % phrases.length
}

next()

    </script>

    <link href="https://fonts.googleapis.com/css2?family=DM+Serif+Display&amp;family=Rubik:wght@300;400;500;600;700;800&amp;display=swap" rel="stylesheet">



    <!-- aos -->
    <script>
      AOS.init();
    </script>

  </body>

  <div>
    <a class="main_up" href="#">
     <img class="main_up_img" src="resources/images/main_arrow.gif">
    </a>
  </div>



<%@ include file="/WEB-INF/views/includes/footer.jsp"%>
