package org.zerock.service;

import org.springframework.stereotype.Service;
import org.zerock.domain.MemberVO;
import org.zerock.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {
	
	
	private MemberMapper mapper;
	
	@Override
	public void register(MemberVO member) {
		log.info("회원가입 되었습니다! 환영합니다!");
		mapper.register(member);
	}
	
	public int modify(MemberVO member) {
		log.info("modify... 게시글을 수정 처리 합니다!" + member);
		// 정상적으로 수정이 이루어지면 1이라는 값이 반환되기 때문에
		// '==' 연산자를 이용해서 true/false를 처리할 수 있습니다.
		return mapper.modify(member);
	}
	
	@Override
	public boolean remove(String id) {
		log.info("회원탈퇴를 실행합니다!");
		return mapper.remove(id);
	}
	
	@Override
	public MemberVO findId(String name, String email) {
		log.info("아이디를 찾습니다!");
		return mapper.findId(name, email);
	}

	@Override
	public MemberVO findPassword(String id, String email) {
		log.info("비밀번호를 찾습니다!");
		return mapper.findPassword(id, email);
	}

	@Override
	public MemberVO read(String id) {
		log.info("아이디를 조회합니다!");
		return mapper.read(id);
	}

	@Override
	public MemberVO login(String id, String password) {
		log.info("로그인을 실행합니다!");
		return mapper.login(id, password);
	}

	@Override
	public MemberVO login_read(String id, String password) {
		log.info("아이디 비번을 확인합니다!");
		return mapper.login_read(id, password);
	}




}
