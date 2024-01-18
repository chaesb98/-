package org.zerock.service;

import java.util.List;

import org.zerock.domain.ConsultationVO;
import org.zerock.domain.Criteria;

public interface ConsultationService {

	public void register(ConsultationVO board);
	
	public ConsultationVO get(Long conbno);
	
	public boolean modify(ConsultationVO board);
	
	public boolean remove(Long conbno);
	
//	public List<BoardVO> getList();
	
	public List<ConsultationVO> getList(Criteria cri);
	
	public int getTotal(Criteria cri);
	
}
