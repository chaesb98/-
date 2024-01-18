package org.zerock.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReviewReplyPageDTO;
import org.zerock.domain.ReviewReplyVO;
import org.zerock.mapper.ReviewMapper;
import org.zerock.service.ReviewReplyService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/reviewreplies/")
@RestController
@Log4j
@AllArgsConstructor 
//ㄴ>굳이 setter 주입 안해도 된다 이거 주석처리하면 @Setter(onMethod_ = @Autowired) 근데 우리는 AllArgsConstructo이걸로 작업
public class ReviewReplyController {
	
	private ReviewReplyService reservice; //서비스 필드 선언
	private ReviewMapper reviewmapper;
	
	//댓글 등록create()
	@PostMapping(value = "/new", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody ReviewReplyVO vo){
		log.info("WffLabReplyVO 댓글 객체 =" + vo);
		int insertCount = reservice.register(vo);
		log.info("등록된 댓글 개수 =" + insertCount);
		
		//return문은 삼항 연산자로 처리함	
		return insertCount ==1
				? new ResponseEntity<String>("success1", HttpStatus.OK) //정상처리가 되면 ResponseEntity의 상태값을 ok로 처리
				: new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR); //정상처리 안되면 에러
	}
	
   
   
	//댓글페이지 getListPage()
	@GetMapping(value="/pages/{rebno}/{page}", produces= {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ReviewReplyPageDTO> getList( //ReplyPageDTO로 객체타입을 바꾸면 List형태로 담을 필요없다.
			@PathVariable("page") int page,
			@PathVariable("rebno") Long rebno){//기존게시글에 댓이 달리니까 bno를 받아오는것임
			log.info("getList...댓글의 리스트 목록 표현입니다!");
			Criteria cri = new Criteria(page, 10); //페이지당 10개씩 보여주자
			log.info(cri);
			return new ResponseEntity<>(reservice.getListPage(cri, rebno),HttpStatus.OK);
													
	}
	
	//댓글(상세)조회 get()
	@GetMapping(value ="/{rerno}",produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ReviewReplyVO> get(
			@PathVariable("rerno") Long rerno){
		log.info("댓글 상세 조회 내용 확인 ! ==>" + rerno);
		return new ResponseEntity<ReviewReplyVO>(reservice.get(rerno), HttpStatus.OK);
	}
	
	//댓글 수정 modify()
	@RequestMapping(method = {RequestMethod.PUT , RequestMethod.PATCH}, value = "/modify/{rerno}", 
			consumes="application/json", produces = {MediaType.TEXT_PLAIN_VALUE}) //댓 내용, 업데이트 날짜만 수정되게 설정함
	public ResponseEntity<String> modify(
			@RequestBody ReviewReplyVO vo, 
			@PathVariable("rerno") Long rerno ){ //@PathVariable("rno") Long rno -> 경로를 변수 rno받아서 리퀘스트바디 vo를 처리할것
		vo.setRerno(rerno);
		log.info("rno 댓글 번호 =" + rerno);
		log.info("modify 수정처리 =" + vo);
		
		//return문은 삼항 연산자로 처리함
		return reservice.modify(vo) ==1
				? new ResponseEntity<String>("success", HttpStatus.OK)
						: new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
				
	}
	
	//댓글 삭제를 위한 remove()
	@DeleteMapping(value ="/delete/{rerno}", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(@PathVariable("rerno") Long rerno){
		log.info("댓글 삭제 처리 =" + rerno);
		
		//return문은 삼항 연산자로 처리함
		return reservice.remove(rerno) ==1
				? new ResponseEntity<String>("success", HttpStatus.OK)
				: new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	}



	public ReviewMapper getBoardmapper() {
		return reviewmapper;
	}



	public void setBoardmapper(ReviewMapper boardmapper) {
		this.reviewmapper = boardmapper;
	}

	
	
	
}
