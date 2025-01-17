package org.zerock.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReviewVO;
import org.zerock.domain.WffLabVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class WffLabServiceTests {
	
	@Setter(onMethod_ = {@Autowired})
	private ReviewService reservice;

	@Test
	// 로그인 미구현으로인한 SQLException으로
	// insert시 id값 필요, 로그인 구현 후 insert 쿼리문 실행 가능 예상
	public void testRegister() {
		ReviewVO review = new ReviewVO();
		review.setRetitle("BoardServiceTests에서 생성한 새로운 글 제목");
		review.setRecontent("새로운 글 내용");
		review.setRewriter("장나라");
		
		reservice.register(review);
		log.info("BoardServiceTests에서 생성된 게시물의 번호 : " + review.getRebno());
	}
	
	// 글목록(리스트) 작업의 기능 구현과 테스트
//	@Test
//	public void testGetList() { //백엔드 getlist와 비슷하며, 백에서 처리
//		service.getList(new Criteria(1, 10)).forEach(wfflabboard -> log.info(wfflabboard));
//	}
	
	@Test
	public void testGet() {
		log.info(reservice.get(7L));
	}

	@Test
	public void testModify() { // 백엔드의 
		// testModify()의 경우, 특정한 게시글(여기서는 6번글)을 먼저 조회하고,
		ReviewVO review = reservice.get(7L); //6번글 수정 처리
		if (review == null) {
			return;
		}
		// 아래의 소스 코드에서 title 값을 수정한 후에, 이를 업데이트 처리합니다.
		review.setRetitle("7번 글의 제목을 수정합니다!");
		log.info("MODIFY RESULT :" + reservice.modify(review));
	}
	
	@Test
	public void testRemove() {
		// 게시물 번호의 존재 여부를 확인하고 테스트를 진행 처리함.
		// testDelete()의 경우, 해당 게시물이 존재할 때 true를 반환하는 것을 확인합니다.
		log.info("remove result : " + reservice.remove(8L)); // 6번 게시글 삭제처리
	}
}
