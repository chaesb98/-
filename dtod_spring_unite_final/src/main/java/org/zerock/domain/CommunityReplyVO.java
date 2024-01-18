package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CommunityReplyVO {
	
	private Long cmrno; //댓글 번호rerno 필드 선언
	private Long cmbno; //게시글 번호rebno review 참조
	
	private String cmreply; //댓글 필드rereply 선언
	private String cmreplyer; //댓글 등록자rereplyer 필드 선언
	
	private Date cmreplyDate; //댓글 등록일rereplyDate 필드선언
	private Date cmupdateDate; //댓글 갱신일/수정일reupdateDate 필드 선언
	

}
