package org.zerock.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.ReviewVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class WffLabMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private ReviewMapper remapper;

	@Test
	public void testGetList() {
		remapper.getList().forEach(wfflabboard -> log.info(wfflabboard));
	}

//	@Test
//	public void testInsert() {
//		// 데이터를 변수에 넣기
//		WffLabVO wfflabboard = new WffLabVO();
//		wfflabboard.setTitle("새로 작성하는 글 제목!");
//		wfflabboard.setContent("새로 작성하는 글 내용!");
//		wfflabboard.setWriter("김희선");
//		
//		mapper.insert(wfflabboard);
//		log.info(wfflabboard);
//	}
	
	@Test
	public void testInsertSelectKey() {
		ReviewVO review = new ReviewVO();
		review.setRetitle("새로 작성하는 글 select key 제목");
		review.setRecontent("새로 작성하는 내용 select key 내용");
		review.setRewriter("김연아");
		
		remapper.insertSelectKey(review);
		log.info(review);
	}
	
	@Test
	public void testRead() {
		// 이번 testRead() 메서드의 테스트 확인은 "기존에 있는 DB 데이터 정보 bno 값"을 활용합니다.
		ReviewVO review = remapper.read(6L);

		log.info(review);

//		remapper.getList().forEach(wfflabboard -> log.info(wfflabboard));
	}

	@Test
	public void testDelete() {
		log.info("삭제 처리 리턴값 : delete count : " + remapper.delete(9L));
	}
	
	@Test
	public void testUpdate() {
		ReviewVO review = new ReviewVO();
		review.setRebno(7L);
		review.setRetitle("수정된 제목");
		review.setRecontent("수정된 내용");
		review.setRewriter("수정자");
		
		int count = remapper.update(review);
		log.info("업데이트 리턴 값 : "+count);
	}
}
