<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="../includes/header.jsp" %> 

	 <!--list CSS-->
	 <link rel="stylesheet" href="/resources/pages/product.css">
	 <link rel="stylesheet" href="/resources/css/animate.min.css">

</head>

<%@ include file="../includes/nav.jsp"%>

<!-- Product Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-0 gx-5 align-items-end">
                <div class="col-lg-8">
                    <div class="section-header text-start mt-5 mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                        <h1 class="display-5 mb-3 pink">술결의 추천 컨텐츠</h1>
                        <p>술과 어울리는 영화를 추천해드립니다! 술결만의 컨텐츠를 즐겨보세요!</p>
                    </div>
                </div>
                <div class="col-lg-4 text-start text-lg-end wow slideInRight" data-wow-delay="0.1s">
                    <ul class="nav nav-pills d-inline-flex justify-content-end mb-5">
                        <li class="nav-item me-2">
                            <a class="btn btn-outline-primary border-2 active" data-bs-toggle="pill" href="#tab-1">와인</a>
                        </li>
                        <li class="nav-item me-2">
                            <a class="btn btn-outline-primary border-2" data-bs-toggle="pill" href="#tab-2">위스키 </a>
                        </li>
                        <li class="nav-item me-0">
                            <a class="btn btn-outline-primary border-2" data-bs-toggle="pill" href="#tab-3">전통주</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="tab-content mb-5">
                <div id="tab-1" class="tab-pane fade show p-0 active">
                    <div class="row g-4">
                        <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/white_chicks.jpg" alt="화이트칙스">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 new">New</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">화이트칙스</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/devil_wears_prada_ver3.jpg" alt="악마는 프라다를 입는다">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 new">New</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">악마는 프라다를 입는다</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/midnight_in_paris_ver4.jpg" alt="미드나잇 인 파리">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 new">New</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">미드나잇 인 파리</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/call_me_by_your_name.jpg" alt="콜미바이유어네임">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 new">New</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">콜미바이유어네임</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/oceans_thirteen_ver3.jpg" alt="오션스">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 new">New</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">오션스13</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/good_year_ver2.jpg" alt="어느 멋진 순간">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 hot">Hot</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">어느 멋진 순간</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/sideways_ver2.jpg" alt="사이드웨이">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 hot">Hot</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">사이드웨이</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/tine.jpg" alt="완벽한 타인">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 hot">Hot</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">완벽한 타인
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 text-center wow fadeInUp" data-wow-delay="0.1s">
                            <a class="btn btn-primary rounded-pill py-3 px-5" href="/pages/about">술결 구독하러 가기</a>
                        </div>
                    </div>
                </div>
                <div id="tab-2" class="tab-pane fade show p-0">
                    <div class="row g-4">
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/kings_man_ver2.jpg" alt="킹스맨">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 new">New</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">킹스맨</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/skyfall.jpg" alt="007-스카이폴">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 new">New</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">007-스카이폴</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/great_gatsby_ver15.jpg" alt="위대한 개츠비">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 new">New</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">위대한 개츠비</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/kamome.jpg" alt="카모메식당">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 new">New</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">카모메식당</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/ratatouille.jpg" alt="라따뚜이">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 new">New</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">라따뚜이</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/sogong.jpg" alt="소공녀">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 new">New</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">소공녀</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/curious_case_of_benjamin_button_ver3.jpg" alt="벤자민 버튼의 시간은 거꾸로 간다">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 new">New</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">벤자민 버튼의 시간은 <br> 거꾸로 간다</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/house_of_gucci_ver14.jpg" alt="하우스 오브 구찌">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 new">New</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">하우스 오브 구찌</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 text-center">
                            <a class="btn btn-primary rounded-pill py-3 px-5" href="/pages/about">술결 구독하러 가기</a>
                        </div>
                    </div>
                </div>
                <div id="tab-3" class="tab-pane fade show p-0">
                    <div class="row g-4">
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/littleF.jpg" alt="리틀포레스트">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 new">New</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">리틀포레스트</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/inmyhead.jpg" alt="내 머리속의 지우개">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 new">New</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">내 머리속의 지우개</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/samlim.jpg" alt="중경삼림">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 new">New</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">중경삼림</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/miljeong.jpg" alt="밀정">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 new">New</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">밀정</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/chinatown.jpg" alt="차이나타운">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 new">New</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">차이나타운</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/sunflower.jpg" alt="해바라기">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 new">New</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">해바라기</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/moonl.jpg" alt="심야식당">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 new">New</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">심야식당</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="product-item">
                                <div class="position-relative bg-light overflow-hidden">
                                    <img class="img-fluid w-100" src="/resources/images/inner.jpg" alt="내부자들">
                                    <div class=" rounded text-white position-absolute start-0 top-0 m-3 py-1 px-3 new">New</div>
                                </div>
                                <div class="text-center p-4">
                                    <a class="d-block mb-2" href="">내부자들</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 text-center">
                            <a class="btn btn-primary rounded-pill py-3 px-5" href="/pages/about">술결 구독하러 가기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Product End -->
    

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/wow.min.js"></script>

    <!-- Template Javascript -->
    <script src="/resources/js/product.js"></script>


<%@ include file="../includes/footer.jsp"%>
