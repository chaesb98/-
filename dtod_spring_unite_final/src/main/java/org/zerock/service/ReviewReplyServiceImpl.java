package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReviewReplyPageDTO;
import org.zerock.domain.ReviewReplyVO;
import org.zerock.mapper.ReviewMapper;
import org.zerock.mapper.ReviewReplyMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ReviewReplyServiceImpl implements ReviewReplyService{
	
	@Setter(onMethod_ = @Autowired)
	private ReviewReplyMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	private ReviewMapper boardmapper;
	
	// 댓글 등록
	@Transactional
	@Override
	public int register(ReviewReplyVO vo) {
		log.info("register 댓글 등록처리 성공!"+vo);
		boardmapper.updateReplyCnt(vo.getRebno(), 1); //댓글 1개를 늘려라 (추가)
		return mapper.insert(vo);
	}

	// 댓글 상세보기
	@Override
	public ReviewReplyVO get(Long rerno) {
		log.info("get 댓글 상세 보기 : "+ rerno);
		return mapper.read(rerno);
	}
	
	// 댓글 수정
	@Override
	public int modify(ReviewReplyVO vo) {
		log.info("modify 댓글 수정 처리 : "+ vo);
		return mapper.update(vo);
	}

	// 댓글 삭제
	@Transactional
	@Override
	public int remove(Long rerno) {
		log.info("remove 댓글 삭제 처리 : " + rerno);
	      // Page485 다음 2줄 소스 추가 코딩해 줍니다.
		ReviewReplyVO vo = mapper.read(rerno);
		boardmapper.updateReplyCnt(vo.getRebno(), -1);
		
		return mapper.delete(rerno);
	}

	@Override
	public List<ReviewReplyVO> getList(Criteria cri, Long rebno) {
		log.info("get Reply List of a Board : 특정 게시글의 댓글 내용들 리스트 출력" + rebno);
		return mapper.getListWithPaging(cri, rebno);
	}
	

	@Override
	public ReviewReplyPageDTO getListPage(Criteria cri, Long rebno) {
		return new ReviewReplyPageDTO(mapper.getCountByBno(rebno), mapper.getListWithPaging(cri, rebno));
	}

	
}
