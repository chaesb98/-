package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewReplyVO {
	
	private Long rerno; //댓글 번호rerno 필드 선언
	private Long rebno; //게시글 번호rebno review 참조
	
	private String rereply; //댓글 필드rereply 선언
	private String rereplyer; //댓글 등록자rereplyer 필드 선언
	
	private Date rereplyDate; //댓글 등록일rereplyDate 필드선언
	private Date reupdateDate; //댓글 갱신일/수정일reupdateDate 필드 선언
	

}
