package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.Criteria;
import org.zerock.domain.CommunityVO;
import org.zerock.mapper.CommunityMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service  // 계층 구조상 주로 비즈니스 영역을 담당하는 객체임을 표시하기 위해 사용함.
@AllArgsConstructor
public class CommunityServiceImpl implements CommunityService {
	
	private CommunityMapper communitymapper;
	
	@Override
	public CommunityVO get(Long cmbno) {
		log.info("get... 특정 글 내용을 조회 합니다!" + cmbno);
		return communitymapper.read(cmbno);
	}
	
	// 게시글 등록
	@Override
	public void register(CommunityVO community) {
		log.info("register 게시글등록 서비스 실행!" + community);
		communitymapper.insertSelectKey(community);
	}

	// 게시글 수정
	@Override
	public boolean modify(CommunityVO community) {
		log.info("modify... 게시글을 수정 처리합니다!" + community);
		return communitymapper.update(community) == 1;
	}

	// 게시글 삭제
	@Override
	public boolean remove(Long cmbno) {
		log.info("remove... 게시글을 삭제 처리 합니다!" + cmbno);
		// 정상적으로 삭제가 이루어지면 1이라는 값이 반환되기 때문에
		// '==' 연산자를 이용해서 true/false를 처리할 수 있습니다.
		return communitymapper.delete(cmbno) == 1;
	}

	@Override
	public List<CommunityVO> getList() {
		log.info("getList.......");
		return communitymapper.getList();
	}

	
	
	@Override
	public List<CommunityVO> getList(Criteria cri) {
		log.info("get List with criteria: "+cri);
		return communitymapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		return communitymapper.getTotalCount(cri);
	}

//	@Override
//	public int getTotal(Criteria cri) {
//		log.info("get total count");
//		return remapper.getTotalCount(cri);
//	}


		
}


