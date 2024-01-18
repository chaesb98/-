package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {

	private Long rebno; // 게시글 번호 필드 선언
	private String retitle; // 게시글 제목 필드 선언
	private String recontent; // 게시글 내용 필드 선언
	private String rewriter; // 게시글 작성자 필드 선언
	private Date redate; // 게시글 등록일자 필드 선언
	private Date reupdateDate; // 게시글 수정일자(갱신일자) 필드 선언
	
	private int replyCnt; //게시글의 댓글 숫자(댓글 수) 필드 선언
}
