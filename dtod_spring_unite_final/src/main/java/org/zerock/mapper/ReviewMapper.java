package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReviewVO;

public interface ReviewMapper {

	public ReviewVO get(Long bno);
	
	public List<ReviewVO> getList();
	
	//Criteria 타입을 파라미터로 사용하는 getListWithPaging()
	public List<ReviewVO> getListWithPaging(Criteria cri);
	
	
	// insert문이 실행되고 생성된 PK값을 알아야 하는 경우에 활용하는 insertSelectKey() 추상 메서드 선언
	public void insertSelectKey(ReviewVO review);	
	
	// read(select) 처리를 위한 read() 추상 메서드 정의
	public ReviewVO read(Long bno);
	
	// delete 처리를 위한 delete() 추상 메서드 정의
	public int delete(Long bno);
	
	// update 처리를 위한 update() 추상 메서드 정의
	public int update(ReviewVO review);
	
	//전체 데이터의 개수를 반환해주는 getTotalCount()메서드 정의
	public int getTotalCount(Criteria cri);
	
	 // 댓글
	public void updateReplyCnt(@Param("rebno")Long rebno, @Param("amount")int amount);	
	
}
