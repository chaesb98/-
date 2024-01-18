package org.zerock.service;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.CommunityVO;

public interface CommunityService {

	// register = insert
	public void register(CommunityVO community);
	// get = 상세보기
	public CommunityVO get(Long cmbno);
	// modify = update
	public boolean modify(CommunityVO community);
	// remove = delete
	public boolean remove(Long cmbno);
	
	public List<CommunityVO> getList();
	
	// Page299 : 페이징 처리가 적용되는 getList() 메서드 선언
	public List<CommunityVO> getList(Criteria cri);
	
	//323p : 전체 데이터스를 구해주는 getTotal()메서드 선언
	public int getTotal(Criteria cri);

}

