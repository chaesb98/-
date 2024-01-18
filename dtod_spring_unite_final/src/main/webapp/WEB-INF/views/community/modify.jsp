<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="../includes/header.jsp" %> 

	 <!--get CSS-->
 	<link rel="stylesheet" href="/resources/communityboard/comm_modify.css">	 

</head>

<%@ include file="../includes/nav.jsp"%>

<!--=============get(read)================-->
<div class = "reply_row">
  <div class = "col-lg-12">
     <div class = "panel panel-ddefault">
        <!-- /.panel-heading -->
        <div class = "panel-body">
           <form role = "form" action="/community/modify" method="post" id="modify">
				<input type="hidden" name="pageNum" value='${pageMaker.cri.pageNum}'>
				<input type="hidden" name="amount" value='${pageMaker.cri.amount}'>	
				<input type="hidden" name="type" value='<c:out value="${pageMaker.cri.type}" />'>
				<input type="hidden" name="keyword" value='<c:out value="${pageMaker.cri.keyword}"/>'>
           	<div class="form-group">
						<label>글 번호</label>
						<input class="form-control" name="cmbno" value='<c:out value="${community.cmbno}"/>' readonly="readonly">
					</div>				
					<div class="form-group">
						<label>제목</label>
						<input class="form-control" name="cmtitle" value='<c:out value="${community.cmtitle}"/>'>
					</div>				
					<div class="form-group">
						<label>내용</label>
	                 	<textarea rows="3" class="form-control" name="cmcontent"><c:out value="${community.cmcontent}"/></textarea>
					</div>				
					<div class="form-group">
						<label>작성자</label>
						<input class="form-control" name="cmwriter" value='<c:out value="${community.cmwriter}"/>' readonly="readonly">
					</div>		
					<div class="form-group">
						<label>등록일</label>
						<input class="form-control" name="cmdate" value='<fmt:formatDate pattern="yyyy/MM/dd" value= "${community.cmdate}"/>' readonly="readonly">
					</div>		
					<div class="form-group">
						<label>수정일</label>
						<input class="form-control" name="cmupdateDate" value='<fmt:formatDate pattern="yyyy/MM/dd" value= "${community.cmupdateDate}"/>' readonly="readonly">
					</div>		
					<!--  onclick="location.href='/wfflabboard/modify?bno=<c:out value="${wfflabboard.bno}"/> '" -->
					<a href="/community/list" class="goList comm_btn_modify_list">목 록</a>	
					<button data-oper='modify' class="btn btn-default modify_btn comm_btn_modify_reg" >수 정</button>		
					<button data-oper='remove' class="btn btn-danger remove_btn comm_btn_modify_del">삭 제</button>
					
            </form>

				
        </div> <!-- end panel-body -->
     </div> <!-- end panel -->
  </div> <!-- end col-log-12 -->
</div><!-- end row -->


<!--========== javascript ============-->

<script type="text/javascript">
	
	$(document).ready(function() {
		var formObj = $("#modify");
		var modify_btn = $(".modify_btn");
		var remove_btn = $(".remove_btn");
		
		modify_btn.on("click",function(e){
			alert("수정 완료되었습니다!");
			e.preventDefault();
			
			formObj.find("input[type='hidden']").remove();
			formObj.attr("method","post");
			
			formObj.submit();
		});
		
		remove_btn.on("click",function(e){
			e.preventDefault();
			alert("삭제가 완료되었습니다!");
	      	formObj.attr("action", "/community/remove");
	      	formObj.attr("method","post");
   		    formObj.find("input[name!='cmbno']").remove();
   		 	formObj.submit();
		});
		
		
		$('button').on("click", function(e) {
	      e.preventDefault();
	      var operation = $(this).data("oper");
	      console.log(operation);
	      
	      if (operation === 'list') {
	        formObj.attr("action", "/community/list").attr("method", "get");
			/* formObj.find("input[name='bno']").remove(); // Remove this line to keep the 'bno' input
			
				
	        } else if (operation === 'remove'){
				alert("수정ㄱ");
				 formObj.attr("method","post"); */
		         var pageNumTag = $("input[name='pageNum']").clone();
		         var amountTag = $("input[name='amount']").clone();
		         /* var keywordTag = $("input[name='keyword']").clone();
		         var typeTag = $("input[name='type']").clone(); */
		         
		         formObj.empty();
		         formObj.append(pageNumTag);
		         formObj.append(amountTag);
		         
		         /* 
		         formObj.append(keywordTag);
		         formObj.append(typeTag); */
			}
				
	      
			formObj.submit();
		});
	});
</script>



<!--=============end get(read)================-->


<%@ include file="../includes/footer.jsp"%>
