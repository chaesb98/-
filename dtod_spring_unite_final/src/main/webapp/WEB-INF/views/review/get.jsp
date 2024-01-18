<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  
<%@include file="../includes/header.jsp" %> 
	 <!--get CSS-->
	 <link rel="stylesheet" href="/resources/review/get.css">

</head>

<%@ include file="../includes/nav.jsp"%>

<!--=============get(read)================-->
<div class = "reply_row">
  <div class = "col-lg-12">
     <div class = "panel panel-ddefault">
        <!-- /.panel-heading -->
        <div class = "panel-body">
          <div class="form-group">
					<label>제목</label> <input class="form-control retitle" name="retitle"
						value='<c:out value="${review.retitle}"/>' readonly="readonly">
				</div>
				<div class="form-group">
					<label>내용</label>
					<textarea rows="10" class="form-control recontent" name="recontent"
						readonly="readonly"><c:out
							value="${review.recontent}" /> </textarea>
				</div>
				<c:if test="${not empty session.name and session.name eq review.rewriter}">
					<button data-oper='modify' class="sub_btn btn-default"
					onclick="location.href='/review/modify?rebno=<c:out value="${review.rebno}"/>'">수정</button>
				</c:if>
				<button data-oper='list' class="reset_btn btn-default"
					onclick="location.href='/review/list'">글 목록</button>

				<!-- Page317 : 기존 get.jsp 에서 버튼을 클릭하면 form 태그를 이용하는 방식이기에
					     데이터를 추가해서 이동하도록 수정 코딩해 줍니다. -->
				<form id='operForm' action="/review/modify" method="get">
						<input type="hidden" id="rebno" name="rebno" value='<c:out value="${review.rebno}"/>'>
						<input type="hidden" id="pageNum" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
						<input type="hidden" id="amount" name="amount" value='<c:out value="${cri.amount}"/>'>
						<input type="hidden" name="type" value='<c:out value="${cri.type}"/>'>
						<input type="hidden" name="keyword" value='<c:out value="${cri.keyword}"/>'>
				</form>
			</div>
			<!-- end panel-body -->
		</div>
		<!-- end panel -->
	</div>
	<!-- end col-log-12 -->
</div>

<!--==========reply============-->
<div class="reply_row">
	<div class="col-lg-12">
		<div class="reply_panel panel-body">
			<div class="reply_tit panel-heading">
				<i class="fa fa-comments fa-fw"></i>
				<p>Reply</p>
				<button id="addReplyBtn"
					class="reply_btn btn-primary btn-xs pull-right">새로운 댓글 달기</button>
			</div>
			<ul class="chat">
				<!-- start reply -->
				<li class="left clearfix" data-rerno='21'>
					<div>
						<div class="header">
							<strong class="primary-font">장나라</strong> <small
								class="pull-right text-muted">2023-10-03 16:24:23</small>
						</div>
						<span>댓글 등록 화면 테스트!</span>
					</div>
				</li>
				<!-- end reply -->
			</ul>
			<!-- end ul.chat -->
		</div>
		<!-- end panel panel-body -->
		
		<div class="panel-footer">
		</div>
		
	</div>
	<!-- end col-lg-12 -->
</div>
<!--end row-->

	<!-- Modal 추가 -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">REPLY MODAL(댓글 모달창)</h4>
                </div>
                <div class="modal-body">
                	<div class="form-group">
                		<label>Reply(댓글)</label>
                		<input class="form-control" name="rereply" value="New Reply!">
                	</div>
                	<div class="form-group">
                		<label>Replyer(댓글 등록자)</label>
                		<input class="form-control" name="rereplyer" value="replyer">
                	</div>
                	<div class="form-group">
                		<label>Reply Date(댓글 등록일)</label>
                		<input class="form-control" name="rereplyDate" value="">
                	</div>
                </div>
                <div class="modal-footer">
                    <button id="modalModBtn" type="button" class="btn btn-warning">Modify(댓글 수정)</button>
                    <button id="modalRemoveBtn" type="button" class="btn btn-danger">Remove(댓글 삭제)</button>
                    <button id="modalRegisterBtn" type="button" class="btn btn-primary">Register(댓글 등록)</button>
                    <button id="modalCloseBtn" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
    
<!--========== javascript ============-->
<script type="text/javascript" src="/resources/js/reviewreply.js"></script>

<script type="text/javascript">
	console.log("==============");
	
	$(document).ready(function () {

	var rebnoValue = '<c:out value="${review.rebno}"/>';
	var replyUL = $(".chat");

	//댓글 목록 뷰 처리
	showList(1); //아직 페이징 적용전
	
	function showList(page) {
		console.log("show list" + page);
		reviewreply.getList({rebno:rebnoValue,page: page||1}, function (replyCnt, list) {
			
			console.log("replyCnt :" + replyCnt);
			console.log("list : "+ list);
			
			if (page == -1) { //데이타가 있다면
				pageNum = Math.ceil(replyCnt/10.0); 
				showList(pageNum);
				return;
			}
			
			
			var str = "";
			if (list == null || list.length == 0) {
				replyUL.html(""); //매개변수에 값이 없을 때 초기화
				return;
			}
			for (var i = 0, len = list.length || 0; i < len; i++) {
				str += "<li class='left clearfix' data-rerno='"+list[i].rerno+"'>";
				str += "<div><div class='header'><strong class='primary-font'>"
						+ list[i].rereplyer + "</strong>";
				str += "<small class='pull-right text-muted'>"
						+ reviewreply.displayTime(list[i].rereplyDate)
						+ "</small></div>";
				str += "<small>" + list[i].rereply + "</small></div></li>";
			}
			replyUL.html(str);
			showReplyPage(replyCnt);
		}); //end function
	} //end showList

	
	var pageNum = 1;
	var replyPageFooter = $(".panel-footer");
	
	function showReplyPage(replyCnt) {
		var endNum = Math.ceil(pageNum/10.0)*10;
		console.log("endNum =" + endNum);
		var startNum = endNum-9;
		console.log("startNum =" + startNum);
		var prev = startNum !=1;
		console.log("prev =" + prev);
		var next = false;
		if (endNum * 10 >= replyCnt) {
			endNum = Math.ceil(replyCnt/10.0);
		}
		if (endNum * 10 < replyCnt) {
			next = true;
		}
		var str ="<div><ul class='pagination pull-right'>";
		if (prev) {
			str += "<li class='page-item'><a class='page-link' href='"+(startNum-1)+"'>Previous</a><li>";
		}
		for (var i = startNum; i <= endNum; i++) {
			var active = pageNum == i ? "active" : "";
			str += "<li class='page-item "+active+"'><a class='page-link' href='"+i+"'>"+i+"</a></li>";
		}
		if (next) {
			str += "<li class='page-item "+active+"'><a class='page-link' href='"+(endNum+1)+"'>Next</a></li>";
			console.log("next =" + next);
		}
		
		str += "</ul></div>";
		console.log(str);
		replyPageFooter.html(str);
	}
	
	replyPageFooter.on("click", "li a", function (e) {
		// 댓글의 페이지 번호는 a 태그 내에 존재하므로 이벤트 처리에서는
        // a 태그의 기본 동작을 제한하고(preventDefault()) 댓글 페이지 번호를
        // 변경한 후에 해당 페이지의 댓글을 가져오도록 합니다. 
        e.preventDefault();
		console.log("page click");
		var targetPageNum = $(this).attr("href");
		console.log("targetPageNum =" + targetPageNum);
		pageNum = targetPageNum;
		showList(pageNum);
	});
	
	
	

		//모달(댓글) 처리 시작
		var modal = $(".modal");
		var modalInputReply = modal.find("input[name='rereply']"); //댓글내용
		var modalInputReplyer = modal.find("input[name='rereplyer']"); //댓글 등록자
		var modalInputReplyDate = modal.find("input[name='rereplyDate']"); //댓글 등록일
		
		var modalModBtn = $("#modalModBtn"); //댓글 수정
		var modalRemoveBtn = $("#modalRemoveBtn"); //댓글 삭제
		var modalRegisterBtn = $("#modalRegisterBtn"); //댓글 등록
		var modalCloseBtn = $("#modalCloseBtn");
		
		
		// 모달(댓글) 등록 'New Reply' 이벤트
		$("#addReplyBtn").on("click", function(e) {
			modal.find("input").val(""); //.val()으로 값담기. 초기화
			modalInputReplyDate.closest("div").hide(); //댓글 등록일 숨기기
			modal.find("button[id != 'modalCloseBtn']").hide(); //창닫기 숨기기
		//	modal.find("input[name='replyer']").val("<c:out value="${member.id}" />");
			
			modalRegisterBtn.show(); //댓글 등록 보이기
			$(".modal").modal("show");
		});
		
		//모달 (댓글)등록 및 갱신 'Reply' 'Replyer' 이벤트
 		modalRegisterBtn.on("click", function(e) {
			var reply = {
					rereply : modalInputReply.val(),
					rereplyer : modalInputReplyer.val(),
					rebno : rebnoValue // 댓글 게시글 번호
			};
			// 댓글이 정상적으로 추가되면 경고창(alert)을 이용해서 성공했다는 사실을 알려주고,
		    // 등록한 내용으로 다시 등록할 수 없도록 입력항목을 비우고 모달창 닫기
			reviewreply.add(reply, function(result) {
				alert("댓글이 정상적으로 등록되었습니다.");
				modal.find("input").val("");
				modal.modal("hide");
				
				//댓글 리스트를 갱신 처리하고 1페이지로 리턴처리
				showList(-1); 
			});
		});
		
		
		//모달(댓글)조회 Ajax처리 수정과 삭제가 필요한 댓글 번호(rno) 'data-rno' 속성 만들어서 추가
 		$(".chat").on("click","li", function (e) {
 			var rerno = $(this).data("rerno");
 			console.log(rerno);
 			reviewreply.get(rerno, function (rereply) {
 				modalInputReply.val(rereply.rereply);
 				modalInputReplyer.val(rereply.rereplyer);
 				modalInputReplyDate.val(reviewreply.displayTime(rereply.rereplyDate)).attr("readonly","readonly");
 				modal.data("rerno",rereply.rerno);
 				modal.find("button[id != 'modalCloseBtn']").hide();
 				modalModBtn.show();
 				modalRemoveBtn.show();
 				
 				$(".modal").modal("show");
 			});
 		});

		
		//모달(댓글) 수정, 페이징 목록
 		modalModBtn.on("click", function (e) {
 			var rereply = {rerno:modal.data("rerno"), rereply:modalInputReply.val()};
 			reviewreply.update(rereply, function (result) {
 				alert("댓글이 정상적으로 수정되었습니다.");
 				modal.modal("hide");
 				
 				showList(pageNum);
 			});
 		});
		
		
		//모달(댓글) 삭제
 		modalRemoveBtn.on("click", function (e) {
 			var rerno = modal.data("rerno");
 			reviewreply.remove(rerno, function (result) {
 				alert("댓글이 정상적으로 삭제되었습니다.");
 				modal.modal("hide");
 				
 				showList(pageNum);
 			});
 		});
		
		
 		modalCloseBtn.on("click",function(e){
 			$(".modal").modal("hide");
 		});
		
		
	}); //end document.ready function
	
	
	
	
	
</script>


<script type="text/javascript">
	$(document).ready(function(){
		var operForm = $("#operForm");
		
		$("button[data-oper='modify']").on("click", function(e) {
			operForm.attr("action", "/review/modify").submit();
		});
		
		$("button[data-oper='list']").on("click", function(e) {
			operForm.find("#rebno").remove();
			operForm.attr("action", "/review/list")
			operForm.submit();
		});
	});
</script>

<!--=============end get(read)================-->


<%@ include file="../includes/footer.jsp"%>

