package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CommunityVO {

	private Long cmbno; // 게시글 번호 필드 선언
	private String cmtitle; // 게시글 제목 필드 선언
	private String cmcontent; // 게시글 내용 필드 선언
	private String cmwriter; // 게시글 작성자 필드 선언
	private Date cmdate; // 게시글 등록일자 필드 선언
	private Date cmupdateDate; // 게시글 수정일자(갱신일자) 필드 선언
	
	private int cmreplyCnt; //게시글의 댓글 숫자(댓글 수) 필드 선언
}
