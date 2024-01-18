package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.ConsultationVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.ConsultationMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;



@Log4j
@Service
 @AllArgsConstructor
public class ConsultationServiceImpl implements ConsultationService {

	
	// Spring 4.3 이상에서는 자동 처리
//	@Setter(onMethod_ = @Autowired)
	private ConsultationMapper mapper;
	
	
	@Override
	public void register(ConsultationVO board) {
		log.info("글등록 처리 테스트 입니다 ====> " + board);
		
		mapper.insertSelectKey(board);
	}

	@Override
	public ConsultationVO get(Long conbno) {
		log.info("글상세조회 기능이 구현됩니다!" + conbno);
		return mapper.read(conbno);
	}

	@Override
	public boolean modify(ConsultationVO board) {
		log.info("글수정이 처리됩니다!" + board);
		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(Long conbno) {
		log.info("글 삭제 기능을 처리합니다!" + conbno);
		return mapper.delete(conbno) == 1;
	}

	@Override
	public List<ConsultationVO> getList(Criteria cri) {
		log.info("pageNum와 amount를 고려한 getList() 글목록 조회! : " + cri);
		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("전체 데이터 숫자를 카운트해서 알려줍니다!");
		return mapper.getTotalCount(cri);
	}

}

