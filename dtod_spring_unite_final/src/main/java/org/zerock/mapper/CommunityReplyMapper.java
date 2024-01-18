package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.Criteria;
import org.zerock.domain.CommunityReplyVO;

public interface CommunityReplyMapper {
	
	public int insert(CommunityReplyVO vo);

	//특정 댓글 상세 조회
	public CommunityReplyVO read(Long cmrno); 
	
	//특정 댓글 삭제 기능 정의
	public int delete(Long cmrno); 
	
	//댓글 수정
	public int update(CommunityReplyVO cmreply); 
	
	//특정 게시글의 댓글 조회시 댓글이 많은 리스트형 댓글들에 대해 페이징 처리.
	public List<CommunityReplyVO> getListWithPaging(
			@Param("cri") Criteria cri, //pageNum ,amount 정보가 넘어간다. 
			@Param("cmbno") Long cmbno);
	
	
	//특정 게시글의 댓글 숫자 파악 기능 구현.
	public int getCountByBno(Long cmbno);
	
	
}
