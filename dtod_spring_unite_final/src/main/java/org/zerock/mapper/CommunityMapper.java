package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.Criteria;
import org.zerock.domain.CommunityVO;

public interface CommunityMapper {

	public CommunityVO get(Long cmbno);
	
	public List<CommunityVO> getList();
	
	//Criteria 타입을 파라미터로 사용하는 getListWithPaging()
	public List<CommunityVO> getListWithPaging(Criteria cri);
	
	
	// insert문이 실행되고 생성된 PK값을 알아야 하는 경우에 활용하는 insertSelectKey() 추상 메서드 선언
	public void insertSelectKey(CommunityVO community);	
	
	// read(select) 처리를 위한 read() 추상 메서드 정의
	public CommunityVO read(Long cmbno);
	
	// delete 처리를 위한 delete() 추상 메서드 정의
	public int delete(Long cmbno);
	
	// update 처리를 위한 update() 추상 메서드 정의
	public int update(CommunityVO community);
	
	//전체 데이터의 개수를 반환해주는 getTotalCount()메서드 정의
	public int getTotalCount(Criteria cri);
	
	 // 댓글
	public void updateReplyCnt(@Param("cmbno")Long cmbno, @Param("amount")int amount);	
	
}
