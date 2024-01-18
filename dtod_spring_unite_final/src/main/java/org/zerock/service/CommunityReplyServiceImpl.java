package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.Criteria;
import org.zerock.domain.CommunityReplyPageDTO;
import org.zerock.domain.CommunityReplyVO;
import org.zerock.mapper.CommunityMapper;
import org.zerock.mapper.CommunityReplyMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class CommunityReplyServiceImpl implements CommunityReplyService{
	
	@Setter(onMethod_ = @Autowired)
	private CommunityReplyMapper communityreplymapper;
	
	@Setter(onMethod_ = @Autowired)
	private CommunityMapper communitymapper;
	
	// 댓글 등록
	@Transactional
	@Override
	public int register(CommunityReplyVO vo) {
		log.info("register 댓글 등록처리 성공!"+ vo);
		communitymapper.updateReplyCnt(vo.getCmbno(), 1); //댓글 1개를 늘려라 (추가)
		return communityreplymapper.insert(vo);
	}

	// 댓글 상세보기
	@Override
	public CommunityReplyVO get(Long cmrno) {
		log.info("get 댓글 상세 보기 : "+ cmrno);
		return communityreplymapper.read(cmrno);
	}
	
	// 댓글 수정
	@Override
	public int modify(CommunityReplyVO vo) {
		log.info("modify 댓글 수정 처리 : "+ vo);
		return communityreplymapper.update(vo);
	}

	// 댓글 삭제
	@Transactional
	@Override
	public int remove(Long cmrno) {
		log.info("remove 댓글 삭제 처리 : " + cmrno);
	      // Page485 다음 2줄 소스 추가 코딩해 줍니다.
		CommunityReplyVO vo = communityreplymapper.read(cmrno);
		communitymapper.updateReplyCnt(vo.getCmbno(), -1);
		
		return communityreplymapper.delete(cmrno);
	}

	@Override
	public List<CommunityReplyVO> getList(Criteria cri, Long cmbno) {
		log.info("get Reply List of a Board : 특정 게시글의 댓글 내용들 리스트 출력" + cmbno);
		return communityreplymapper.getListWithPaging(cri, cmbno);
	}
	

	@Override
	public CommunityReplyPageDTO getListPage(Criteria cri, Long cmbno) {
		return new CommunityReplyPageDTO(communityreplymapper.getCountByBno(cmbno), communityreplymapper.getListWithPaging(cri, cmbno));
	}

	
}
