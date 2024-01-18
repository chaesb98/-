package org.zerock.service;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.ReviewReplyPageDTO;
import org.zerock.domain.ReviewReplyVO;

public interface ReviewReplyService {
	
	// 댓글 등록
	public int register(ReviewReplyVO vo); //왜 매개변수 ReplyVO타입의 vo인가? 댓글 작성자, 내용 등 한방에 객체로 처리하겠다!
	
	// 댓글 조회
	public ReviewReplyVO get(Long rerno); // ReplyVO rno 식별해서 댓글 상세 뵉
	
	// 댓글 수정
	public int modify(ReviewReplyVO vo); //기존에 있는 ReplyVO 내용을 읽어와서 그걸 수정 처리하겠다.
	
	// 댓글 삭제
	public int remove(Long rerno); //rno를 기준으로 삭제처리하겠다. 기준을 하겠다
	
	public List<ReviewReplyVO> getList(Criteria cri, Long rebno); 
	//ㄴ>cri를 가져와서 bno을 읽어들이겠다. 특정 게시글(bno기준)에 있는 리스트데이트를 보겠다.
	
	// 댓글 페이징 처리
	public ReviewReplyPageDTO getListPage(Criteria cri, Long rebno);

}
