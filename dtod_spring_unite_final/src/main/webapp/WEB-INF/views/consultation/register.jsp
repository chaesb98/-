<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="../includes/header.jsp" %> 

	 <link href="/resources/consultation/bootstrap.min.css" rel="stylesheet">
	 <!--register CSS-->
	 <link rel="stylesheet" href="/resources/consultation/register.css">

</head>

<%@ include file="../includes/nav.jsp"%>

<!--=============register(insert)================-->
<div class = "row">
  <div class = "col-lg-12">
     <div class = "panel panel-ddefault">
        <!-- /.panel-heading -->
        <div class = "panel-body">
          <p>문의글 등록하기</p>
           <form action="/consultation/register" role = "form" method="post">
              <div class="form-group">
                 <label>제목</label>
                 <input class = "form-control" name = "contitle">
              </div>
              <div class="form-group">
                 <label>내용</label>
                 <textarea rows="5" class="form-control" name = "concontent"></textarea>
              </div>
              <div class="form-group">
                 <label>작성자</label>
                 <input class = "form-control" name = "conwriter">
              </div>
              <div class="input-group mb-3">
                <!-- <label>첨부파일</label> -->
                <input type="file" class="form-control" id="inputGroupFile02">
                <label class="input-group-text" for="inputGroupFile02">Upload</label>
              </div>
              <button type="submit" class="sub_btn btn-default">등록하기</button>
              <button type="reset" class="reset_btn btn-default">모두 지우기</button>
              <a href="/consultation/list" class="goList">글 목록</a>
           </form>
        </div> <!-- end panel-body -->
     </div> <!-- end panel -->
  </div> <!-- end col-log-12 -->
</div> <!-- end row -->
<!--=============end register(insert)================-->
<script type="text/javascript">
	$(document).ready(
		function(){
			$("#listBtn").on("click", function(){
				self.location = "/consultation/list";
			});
		});
</script>


<%@ include file="../includes/footer.jsp"%>
